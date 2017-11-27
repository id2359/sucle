(in-package :fuktard)
(export (quote with-unsafe-speed))
(defmacro with-unsafe-speed (&body body)
  `(locally (declare (optimize (speed 3) (safety 0)))
     (progn
       ,@body)))