.class public interface abstract Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;
.super Ljava/lang/Object;
.source "SpeechRecognitionInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub;,
        Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract closeApp(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openApp(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
