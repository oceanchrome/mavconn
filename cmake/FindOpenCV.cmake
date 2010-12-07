INCLUDE(FindPackageHandleStandardArgs)
INCLUDE(HandleLibraryTypes)

SET(OpenCV_IncludeSearchPaths
  /usr/include/opencv/
  /usr/local/include/opencv/
  /opt/local/include/opencv/
)

SET(OpenCV_LibrarySearchPaths
  /usr/lib/
  /usr/local/lib/
  /opt/local/lib/
)

FIND_PATH(CV_INCLUDE_DIR cv.h
  PATHS ${OpenCV_IncludeSearchPaths}
)
FIND_LIBRARY(CV_LIBRARY_OPTIMIZED
  NAMES cv
  PATHS ${OpenCV_LibrarySearchPaths}
)

FIND_PATH(CVAUX_INCLUDE_DIR cvaux.h
  PATHS ${OpenCV_IncludeSearchPaths}
)
FIND_LIBRARY(CVAUX_LIBRARY_OPTIMIZED
  NAMES cvaux
  PATHS ${OpenCV_LibrarySearchPaths}
)

FIND_PATH(CXCORE_INCLUDE_DIR cxcore.h
  PATHS ${OpenCV_IncludeSearchPaths}
)
FIND_LIBRARY(CXCORE_LIBRARY_OPTIMIZED
  NAMES cxcore
  PATHS ${OpenCV_LibrarySearchPaths}
)

FIND_PATH(ML_INCLUDE_DIR ml.h
  PATHS ${OpenCV_IncludeSearchPaths}
)
FIND_LIBRARY(ML_LIBRARY_OPTIMIZED
  NAMES ml
  PATHS ${OpenCV_LibrarySearchPaths}
)

FIND_PATH(HIGHGUI_INCLUDE_DIR highgui.h
  PATHS ${OpenCV_IncludeSearchPaths}
)
FIND_LIBRARY(HIGHGUI_LIBRARY_OPTIMIZED
  NAMES highgui
  PATHS ${OpenCV_LibrarySearchPaths}
)

# Handle the REQUIRED argument and set the <UPPERCASED_NAME>_FOUND variable
FIND_PACKAGE_HANDLE_STANDARD_ARGS(OpenCV "Could NOT find cv (OpenCV)"
  CV_LIBRARY_OPTIMIZED
  CV_INCLUDE_DIR
)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(OpenCV "Could NOT find cvaux (OpenCV)"
  CVAUX_LIBRARY_OPTIMIZED
  CVAUX_INCLUDE_DIR
)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(OpenCV "Could NOT find cxcore (OpenCV)"
  CXCORE_LIBRARY_OPTIMIZED
  CXCORE_INCLUDE_DIR
)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(OpenCV "Could NOT find highgui (OpenCV)"
  HIGHGUI_LIBRARY_OPTIMIZED
  HIGHGUI_INCLUDE_DIR
)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(OpenCV "Could NOT find ml (OpenCV)"
  ML_LIBRARY_OPTIMIZED
  ML_INCLUDE_DIR
)


# Collect optimized and debug libraries
HANDLE_LIBRARY_TYPES(CV)
HANDLE_LIBRARY_TYPES(CVAUX)
HANDLE_LIBRARY_TYPES(CXCORE)
HANDLE_LIBRARY_TYPES(ML)
HANDLE_LIBRARY_TYPES(HIGHGUI)

MARK_AS_ADVANCED(
  CV_INCLUDE_DIR
  CV_LIBRARY_OPTIMIZED

  CVAUX_INCLUDE_DIR
  CVAUX_LIBRARY_OPTIMIZED

  CXCORE_INCLUDE_DIR
  CXCORE_LIBRARY_OPTIMIZED

  ML_INCLUDE_DIR
  ML_LIBRARY_OPTIMIZED

  HIGHGUI_INCLUDE_DIR
  HIGHGUI_LIBRARY_OPTIMIZED
)