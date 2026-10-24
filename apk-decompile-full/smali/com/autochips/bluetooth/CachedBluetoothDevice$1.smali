.class Lcom/autochips/bluetooth/CachedBluetoothDevice$1;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/CachedBluetoothDevice;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/autochips/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 334
    iget-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/autochips/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->disconnect()V

    return-void
.end method
