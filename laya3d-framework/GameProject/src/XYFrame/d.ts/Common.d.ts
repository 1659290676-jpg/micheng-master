
/**定义字典Map类型*/
interface Dictionary<T> {
    [key: string]: T;
    [key: number]: T;
}

/**类的定义*/
interface Class<T> {
    new(...arg): T;
}