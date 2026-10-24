.class Lcom/hzbhd/bluetooth/widget/Keyboard$34;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/widget/Keyboard$OnPhoneKeyboardLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/widget/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/widget/Keyboard;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/widget/Keyboard;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/hzbhd/bluetooth/widget/Keyboard$34;->this$0:Lcom/hzbhd/bluetooth/widget/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNumberLongClick(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onStarLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onWellLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
