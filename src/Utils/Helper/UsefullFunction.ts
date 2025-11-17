const useFullFunction = {
    randomizedArr(source: any) {
        const result = []
        while (source.length !== 0) {
            let randomIndex = Math.floor(Math.random() * source.length)
            result.push(source[randomIndex])
            source.splice(randomIndex, 1)
        }
        return result
    }
};

export default useFullFunction