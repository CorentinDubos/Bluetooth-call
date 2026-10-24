.class public interface abstract Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener;
.super Ljava/lang/Object;
.source "DigitalAudioEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener$Stub;,
        Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract trackNewAudioAttributes(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
