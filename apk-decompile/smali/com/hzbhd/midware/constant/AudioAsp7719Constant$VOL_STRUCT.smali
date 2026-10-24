.class public Lcom/hzbhd/midware/constant/AudioAsp7719Constant$VOL_STRUCT;
.super Ljava/lang/Object;
.source "AudioAsp7719Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/AudioAsp7719Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VOL_STRUCT"
.end annotation


# instance fields
.field public aux:I

.field public bt:I

.field public dvd:I

.field public nav:I

.field public radio:I

.field public tv:I


# direct methods
.method protected constructor <init>(IIIIII)V
    .locals 0

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput p1, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$VOL_STRUCT;->dvd:I

    .line 825
    iput p2, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$VOL_STRUCT;->radio:I

    .line 826
    iput p3, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$VOL_STRUCT;->aux:I

    .line 827
    iput p4, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$VOL_STRUCT;->tv:I

    .line 828
    iput p5, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$VOL_STRUCT;->nav:I

    .line 829
    iput p6, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$VOL_STRUCT;->bt:I

    return-void
.end method
