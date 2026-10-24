.class public interface abstract Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface;
.super Ljava/lang/Object;
.source "ILcdShowInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract get_lcd_da_table_byte16()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setIconDot(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract set_lcd_da_table_byte16(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
