.class public Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;
.super Ljava/lang/Object;
.source "PbSyncATParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/util/PbSyncATParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BT_PB_ADDREC_PARAM_T"
.end annotation


# instance fields
.field public iIndex:I

.field public iTelType:I

.field public sDate:Ljava/lang/String;

.field public sName:Ljava/lang/String;

.field public sNumber:Ljava/lang/String;

.field public sSndName:Ljava/lang/String;

.field public sTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
