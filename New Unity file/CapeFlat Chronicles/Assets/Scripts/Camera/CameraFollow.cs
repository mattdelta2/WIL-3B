using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    [SerializeField] private Transform target; // The player's transform
    [SerializeField] private float smoothing = 0.125f; // Smoothness of the camera movement

    [SerializeField] private Vector2 minBounds; // Minimum x and y for the camera
    [SerializeField] private Vector2 maxBounds; // Maximum x and y for the camera

    [SerializeField] private Vector3 offset; // Offset between the camera and the target
    private float cameraHalfWidth;
    private float cameraHalfHeight;

    void Start()
    {
        offset = transform.position - target.position;

        // Calculate the camera's size based on its orthographic view
        Camera cam = Camera.main;
        cameraHalfHeight = cam.orthographicSize;
        cameraHalfWidth = cameraHalfHeight * cam.aspect;
    }

    void FixedUpdate()
    {
        // Calculate the target camera position with offset
        Vector3 targetCamPos = target.position + offset;

        // Clamp the target position within the map boundaries
        float clampedX = Mathf.Clamp(targetCamPos.x, minBounds.x + cameraHalfWidth, maxBounds.x - cameraHalfWidth);
        float clampedY = Mathf.Clamp(targetCamPos.y, minBounds.y + cameraHalfHeight, maxBounds.y - cameraHalfHeight);

        // Apply smoothing
        Vector3 smoothedPosition = Vector3.Lerp(transform.position, new Vector3(clampedX, clampedY, transform.position.z), smoothing);

        // Update camera position
        transform.position = smoothedPosition;
    }
}
