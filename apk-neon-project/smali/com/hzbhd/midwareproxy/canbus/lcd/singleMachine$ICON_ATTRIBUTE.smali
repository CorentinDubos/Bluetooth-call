.class Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;
.super Ljava/lang/Object;
.source "singleMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICON_ATTRIBUTE"
.end annotation


# instance fields
.field icon_bit:C

.field icon_pos:I


# direct methods
.method constructor <init>(IC)V
    .locals 0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    .line 591
    iput-char p2, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    return-void
.end method
