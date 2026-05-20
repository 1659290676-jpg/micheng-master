
var tempCanvas = wx.createCanvas();
tempCanvas.name = "bd_temp_canvas";
var ctx = tempCanvas.getContext("webgl2"); // 获取canvas的2D绘图上下文;
var systemInfo = wx.getSystemInfoSync();
tempCanvas.width = systemInfo.windowWidth;
tempCanvas.height = systemInfo.windowHeight;
GameGlobal.bd_temp_canvas = tempCanvas;
GameGlobal.bd_temp_ctx = ctx;

function preloadImage(imagePath) {

    return new Promise(function (resolve) {
        // 创建图片对象
        var img = wx.createImage();
        img.src = imagePath;

        // 初始化着色器程序
        var vertexShaderSource = "\n    attribute vec4 a_position;\n    attribute vec2 a_texCoord;\n    varying vec2 v_texCoord;\n    void main() {\n        gl_Position = a_position;\n        v_texCoord = a_texCoord;\n    }\n";

        // 修改后的片段着色器
        var fragmentShaderSource = "\nprecision mediump float;\nvarying vec2 v_texCoord;\nuniform sampler2D u_texture;\nvoid main() {\n    gl_FragColor = texture2D(u_texture, vec2(v_texCoord.x, 1.0 - v_texCoord.y));\n}\n";

        // 创建着色器函数
        function createShader(gl, type, source) {
            var shader = gl.createShader(type);
            gl.shaderSource(shader, source);
            gl.compileShader(shader);
            if (!gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
                console.error(gl.getShaderInfoLog(shader));
                return null;
            }
            return shader;
        }

        // 创建着色器程序
        var vertexShader = createShader(ctx, ctx.VERTEX_SHADER, vertexShaderSource);
        var fragmentShader = createShader(ctx, ctx.FRAGMENT_SHADER, fragmentShaderSource);
        var program = ctx.createProgram();
        GameGlobal.bd_temp_program = program;
        ctx.attachShader(program, vertexShader);
        ctx.attachShader(program, fragmentShader);
        ctx.linkProgram(program);
        if (!ctx.getProgramParameter(program, ctx.LINK_STATUS)) {
            console.error(ctx.getProgramInfoLog(program));
        }

        // 设置顶点数据（包含位置和纹理坐标）
        var vertices = new Float32Array([
            // 位置坐标    纹理坐标
            -1.0, 1.0, 0.0, 1.0,
            // 左上
            1.0, 1.0, 1.0, 1.0,
            // 右上
            -1.0, -1.0, 0.0, 0.0,
            // 左下
            1.0, -1.0, 1.0, 0.0 // 右下
        ]);

        // 创建顶点缓冲区
        var vertexBuffer = ctx.createBuffer();
        GameGlobal.bd_temp_vertexBuffer = vertexBuffer;
        ctx.bindBuffer(ctx.ARRAY_BUFFER, vertexBuffer);
        ctx.bufferData(ctx.ARRAY_BUFFER, vertices, ctx.STATIC_DRAW);

        // 获取属性位置
        var positionLocation = ctx.getAttribLocation(program, "a_position");
        var texCoordLocation = ctx.getAttribLocation(program, "a_texCoord");
        var textureLocation = ctx.getUniformLocation(program, "u_texture");
        img.onload = function () {
            // 获取画布实际尺寸
            var canvasWidth = tempCanvas.width;
            var canvasHeight = tempCanvas.height;

            // 获取图片原始尺寸
            var imgWidth = img.width;
            var imgHeight = img.height;

            // 计算宽高比
            var canvasAspect = canvasWidth / canvasHeight;
            var imageAspect = imgWidth / imgHeight;

            // 重新计算绘制范围（COVER模式）
            var scale = 1;
            if (imageAspect > canvasAspect) {
                // 图片更宽，按高度适配
                scale = canvasHeight / imgHeight;
            } else {
                // 图片更高，按宽度适配
                scale = canvasWidth / imgWidth;
            }

            // 计算缩放后的尺寸
            var scaledWidth = imgWidth * scale;
            var scaledHeight = imgHeight * scale;

            // 转换为WebGL归一化坐标（保持居中）
            var normWidth = scaledWidth / canvasWidth * 2; // 转换为[-1,1]范围
            var normHeight = scaledHeight / canvasHeight * 2;

            // 更新顶点数据（超出部分自动裁剪）
            var vertices = new Float32Array([
                // 位置坐标             纹理坐标
                -normWidth / 2, normHeight / 2, 0.0, 1.0,
                // 左上
                normWidth / 2, normHeight / 2, 1.0, 1.0,
                // 右上
                -normWidth / 2, -normHeight / 2, 0.0, 0.0,
                // 左下
                normWidth / 2, -normHeight / 2, 1.0, 0.0 // 右下
            ]);

            // 更新顶点缓冲区
            ctx.bindBuffer(ctx.ARRAY_BUFFER, vertexBuffer);
            ctx.bufferData(ctx.ARRAY_BUFFER, vertices, ctx.STATIC_DRAW);
            // 创建纹理
            var texture = ctx.createTexture();
            GameGlobal.bd_temp_texture = texture;
            ctx.bindTexture(ctx.TEXTURE_2D, texture);
            ctx.texImage2D(ctx.TEXTURE_2D, 0, ctx.RGBA, ctx.RGBA, ctx.UNSIGNED_BYTE, img);

            // 设置纹理参数
            ctx.texParameteri(ctx.TEXTURE_2D, ctx.TEXTURE_WRAP_S, ctx.CLAMP_TO_EDGE);
            ctx.texParameteri(ctx.TEXTURE_2D, ctx.TEXTURE_WRAP_T, ctx.CLAMP_TO_EDGE);
            ctx.texParameteri(ctx.TEXTURE_2D, ctx.TEXTURE_MIN_FILTER, ctx.LINEAR);
            ctx.texParameteri(ctx.TEXTURE_2D, ctx.TEXTURE_MAG_FILTER, ctx.LINEAR);

            // 设置视口
            ctx.viewport(0, 0, ctx.canvas.width, ctx.canvas.height);

            // 清空画布
            ctx.clearColor(0.0, 0.0, 0.0, 1.0);
            ctx.clear(ctx.COLOR_BUFFER_BIT);

            // 使用程序
            ctx.useProgram(program);

            // 设置顶点属性指针
            ctx.bindBuffer(ctx.ARRAY_BUFFER, vertexBuffer);

            // 位置属性
            ctx.enableVertexAttribArray(positionLocation);
            ctx.vertexAttribPointer(positionLocation, 2, ctx.FLOAT, false, 4 * 4, 0);

            // 纹理坐标属性
            ctx.enableVertexAttribArray(texCoordLocation);
            ctx.vertexAttribPointer(texCoordLocation, 2, ctx.FLOAT, false, 4 * 4, 2 * 4);

            // 绑定纹理到0号单元
            ctx.activeTexture(ctx.TEXTURE0);
            ctx.bindTexture(ctx.TEXTURE_2D, texture);
            ctx.uniform1i(textureLocation, 0);

            // 绘制三角形带
            ctx.drawArrays(ctx.TRIANGLE_STRIP, 0, 4);
            resolve();
        };
        img.onerror = function (err) {
            console.error("图片加载失败:", err);
            resolve();
        };
    });
}
preloadImage("login/bg.jpg");