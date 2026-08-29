#include <ion/ion.h>

/*
 * Compatibility for legacy Spreadtrum Mali userspace.
 *
 * Old libGLES_mali.so expects ion_invalidate_fd(), which is no longer
 * exported by Android Pie's libion.
 */
int ion_invalidate_fd(int ion_fd, int shared_fd)
{
    return ion_sync_fd(ion_fd, shared_fd);
}
