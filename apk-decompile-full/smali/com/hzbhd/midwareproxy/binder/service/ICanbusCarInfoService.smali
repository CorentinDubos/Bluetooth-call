.class public interface abstract Lcom/hzbhd/midwareproxy/binder/service/ICanbusCarInfoService;
.super Ljava/lang/Object;
.source "ICanbusCarInfoService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/ICanbusCarInfoService$Stub;,
        Lcom/hzbhd/midwareproxy/binder/service/ICanbusCarInfoService$Default;
    }
.end annotation


# virtual methods
.method public abstract canbusCarInfoChange([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
