.class public interface abstract Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService;
.super Ljava/lang/Object;
.source "ICanbusAirService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService$Stub;,
        Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService$Default;
    }
.end annotation


# virtual methods
.method public abstract canbusAirInfoChange([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
