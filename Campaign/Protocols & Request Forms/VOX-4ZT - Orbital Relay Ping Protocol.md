The **Orbital Relay Ping Protocol** is a **signal calibration and authentication procedure** between surface teams (your players) and the orbital command vessel _Imperialis Aegis_.  
It’s essentially a way of “re-aligning” the deep-void vox relays buried across Luna Tenebris so that the Aegis can accurately **track**, **scan**, or **strike** planetary targets.

Due to atmospheric distortion, interference, and the moon’s magnetic anomalies, these relays have drifted off calibration.  
Reactivating or recalibrating them sends out a **“ping”—a triangulated data burst**—back to orbit, verifying that a sector of the moon’s surface is safe for Imperial transmission, supply drops, or fire support.

Player Text:
**ORBITAL RELAY PING PROTOCOL // DESIGNATE: AEGIS-LTN/Θ**

The deep-void vox relays on Luna Tenebris have drifted out of phase. To re-establish a secure channel with _Imperialis Aegis_, ground teams must perform a **three-point calibration ping**.

Each surface relay – **Theta**, **Epsilon**, and **Alpha** – must be assigned a **signal delay** (in milliseconds). These delays determine how the ping “bounces” between relays before punching through the moon’s distorted magnetosphere and reaching orbit.

The Aegis will only acknowledge the ping if:

1. **Total Propagation Budget** is correct.  
    The sum of all three delays must be exactly **18 ms**. Too low and the signal collapses in the upper atmosphere; too high and the beam overshoots the target lock.
    
2. **Outer Relay Dominance** is preserved.  
    The outermost relay (**Alpha**) must fire **last** and be the **largest delay**. The nearest relay to the base (**Theta**) must be the **smallest delay**.
    
3. **Generator Sync** is respected.  
    Facility Tenebris currently has **only two functional generators** feeding the comms grid. Theta’s delay must match the number of online generators.
    
4. **Orbital Echo Confirmation** matches scan.  
    Auspex on the Aegis has logged **nine distinct echo peaks** from the final pulse. Alpha’s delay must match that value.
    

Once all three delays are correct, the vox array will automatically encode them into an **authentication burst** and transmit:

> `PING FRAME: [SECTOR LTN] – [Θ, Ε, Α] // EXPECTED AUTH CODE: LTN-279`

If any constraint is wrong, the Aegis will respond with **CALIBRATION ERROR** and ignore further traffic until the sequence is corrected.