.class Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$13;
.super Lcom/autochips/bluetooth/hf/HfAtCommandHandler;
.source "BluetoothHfAtHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->initializeHfAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$13;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method

.method private isValidDtmf(C)Z
    .locals 2

    const/16 v0, 0x23

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    .line 792
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public handleResponseCode([Ljava/lang/Object;)V
    .locals 2

    .line 772
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 774
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 775
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    .line 777
    :cond_0
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 779
    :goto_0
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$13;->isValidDtmf(C)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_1
    return-void
.end method
