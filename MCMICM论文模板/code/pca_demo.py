
# PCA

import numpy as np



def percent2num(eigVals, percent):
    eigSort = np.sort(eigVals)
    eigSort = eigSort[-1::-1]
    eigSum = sum(eigSort)
    # print(eigSum)
    num = 0
    temp = 0
    for i in eigSort:
        temp += i
        num += 1
        if temp >= eigSum * percent:
            return num

def zeroMean(dataMat):
    dataMean = np.mean(dataMat, axis=0)
    newDataMat = dataMat - dataMean
    return newDataMat, dataMean

# PCA
def pca(dataMat, percent):
    newDataMat, dataMean = zeroMean(dataMat)
    covMat = np.cov(newDataMat, rowvar=False)

    eigVals, eigVects = np.linalg.eig(np.mat(covMat))
    # print(eigVals)
    num = percent2num(eigVals, percent)
    n_eigIndex = np.argsort(eigVals)
    n_eigVect = eigVects[:, n_eigIndex]
    lowDData = newDataMat * n_eigVect
    rebuiltData = lowDData * n_eigVect.T + dataMean

    return lowDData, rebuiltData

if __name__ == '__main__':
    percent = 0.99
    data = np.array([[1, 2, 3],
                     [4, 5, 6],
                     [7, 8, 9]])
    lowDData, rebuiltData = pca(data, percent)
    print(data)
    print(rebuiltData)
    print(lowDData)