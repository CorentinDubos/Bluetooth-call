.class public Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AUD_EQ_CH_TypeDef;
.super Ljava/lang/Object;
.source "AudioAsp7719Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/AudioAsp7719Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AUD_EQ_CH_TypeDef"
.end annotation


# instance fields
.field public bBass:I

.field public bEqSort:I

.field public bMiddle:I

.field public bSubVol:I

.field public bTreble:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 175
    iput v0, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AUD_EQ_CH_TypeDef;->bEqSort:I

    const/16 v0, 0xe

    .line 176
    iput v0, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AUD_EQ_CH_TypeDef;->bTreble:I

    .line 177
    iput v0, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AUD_EQ_CH_TypeDef;->bMiddle:I

    .line 178
    iput v0, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AUD_EQ_CH_TypeDef;->bBass:I

    const/4 v0, 0x7

    .line 179
    iput v0, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AUD_EQ_CH_TypeDef;->bSubVol:I

    return-void
.end method
