# Provision Note
This is just for writing the common note during coding with python
## file encoding
```
# -*- coding: utf-8 -*-
```
Common way to define file encoding.

## `__name__`
This is a special variable when running python code. It is set to "__main__", if the script is being executed. It is set to other modules name, if the script is imported by other module.
## cv2.watKey(0)
THis usually comes for cv2.imshow().
```
k = cv2.waitKey(0)    # return something
if k == 27:     # check if you input ese
  cv2.destroyAllWindows()
elif k == ord('q'):   # press 'q' to save images and quit
    cv2.imwrite('messigray.png',img)
    cv2.destroyAllWindows()
```
