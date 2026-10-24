.class public interface abstract Lcom/hzbhd/midwareproxy/binder/service/ICanbusRadarService;
.super Ljava/lang/Object;
.source "ICanbusRadarService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/ICanbusRadarService$Stub;,
        Lcom/hzbhd/midwareproxy/binder/service/ICanbusRadarService$Default;
    }
.end annotation


# virtual methods
.method public abstract canbusRadarInfoChange([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
