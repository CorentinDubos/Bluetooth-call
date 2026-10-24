.class public Lcom/autochips/settings/AtcSettings$VCP$YUVGain;
.super Ljava/lang/Object;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$VCP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YUVGain"
.end annotation


# instance fields
.field public i4UGain:I

.field public i4VGain:I

.field public i4YGain:I

.field public srctype:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
