.class public Lcom/hzbhd/midware/constant/AudioAsp7719Constant$EQ_SETTING_TypeDef;
.super Ljava/lang/Object;
.source "AudioAsp7719Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/AudioAsp7719Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EQ_SETTING_TypeDef"
.end annotation


# instance fields
.field public bBass:I

.field public bMiddle:I

.field public bTreble:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput p1, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$EQ_SETTING_TypeDef;->bTreble:I

    .line 343
    iput p2, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$EQ_SETTING_TypeDef;->bMiddle:I

    .line 344
    iput p3, p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$EQ_SETTING_TypeDef;->bBass:I

    return-void
.end method
