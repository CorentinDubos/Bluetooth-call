.class public Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;
.super Ljava/lang/Object;
.source "DefaultChip.java"


# static fields
.field static TAG:Ljava/lang/String;

.field static mDefaultChip:Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canColoradjustment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getInstance()Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;
    .locals 1

    .line 7
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;->mDefaultChip:Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;->mDefaultChip:Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;

    .line 10
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;->mDefaultChip:Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;

    return-object v0
.end method
