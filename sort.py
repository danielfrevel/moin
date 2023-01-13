dieListe=[19,29,1,42,12,194,19412,85,10,5,23]

class Sort:
    def sort(list: list) -> list:  
        for i in range(len(list)):
            for j in range(len(list)):
                if list[i] < list[j]:
                    cache = list[j]
                    list[j] = list[i]
                    list[i] = cache
        return list

    def find(list, item):
        for i in list:
            if item == i: 
                return i 

    def isElementInList(list, item):
        if Sort.find(list, item) != None: return True
        return False

print(Sort.sort(dieListe))

print(Sort.isElementInList(dieListe, 42))
                    