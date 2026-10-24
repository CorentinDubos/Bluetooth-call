.class public Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;
.super Ljava/lang/Object;
.source "PbSyncATParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/util/PbSyncATParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BT_PB_SETLISTINFO_PARAM_T"
.end annotation


# instance fields
.field public ePath:I

.field public iMaxCnt:I

.field public iMissCnt:I

.field public iRecCnt:I

.field public iStartIdx:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
