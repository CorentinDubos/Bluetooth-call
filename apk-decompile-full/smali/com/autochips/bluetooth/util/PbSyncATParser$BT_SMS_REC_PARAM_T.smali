.class public Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;
.super Ljava/lang/Object;
.source "PbSyncATParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/util/PbSyncATParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BT_SMS_REC_PARAM_T"
.end annotation


# instance fields
.field public iIndex:I

.field public lTimeMillis:J

.field public sContent:Ljava/lang/String;

.field public sTelNum:Ljava/lang/String;

.field public sType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
