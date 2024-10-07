using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public Transform target;
    public float smoothing = .125f;

    private Vector3 offset;

    void Start()
    {
        offset = transform.position - target.position;
    }

    void FixedUpdate()
    {
        Vector3 targetCamPos = target.position + offset;
        transform.position = Vector3.Lerp(transform.position, targetCamPos, smoothing * Time.deltaTime);
    }



    //smooth camera follow
    /*public Transform target;  // The player's position

    void LateUpdate()
    {
        // The camera immediately snaps to the player's position
        transform.position = new Vector3(target.position.x, target.position.y, transform.position.z);
    }*/
}
