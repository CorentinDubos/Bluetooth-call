.class public Lcom/hzbhd/midwareproxy/hardware/videochip/N3;
.super Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;
.source "N3.java"


# static fields
.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/videochip/N3;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/videochip/N3;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/hardware/videochip/DefaultChip;-><init>()V

    return-void
.end method


# virtual methods
.method public canColoradjustment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
