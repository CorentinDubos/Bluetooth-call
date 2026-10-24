.class public interface abstract Lcom/hzbhd/midwareproxy/binder/service/IServiceHeartBeat;
.super Ljava/lang/Object;
.source "IServiceHeartBeat.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/IServiceHeartBeat$Stub;,
        Lcom/hzbhd/midwareproxy/binder/service/IServiceHeartBeat$Default;
    }
.end annotation


# virtual methods
.method public abstract getBeatNum(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
