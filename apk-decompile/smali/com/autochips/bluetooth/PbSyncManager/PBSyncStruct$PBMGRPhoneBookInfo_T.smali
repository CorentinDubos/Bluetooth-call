.class public Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;
.super Ljava/lang/Object;
.source "PBSyncStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBMGRPhoneBookInfo_T"
.end annotation


# instance fields
.field public bGetRecNum:Z

.field public u4MaxIndex:I

.field public u4Miss:I

.field public u4RecordNum:I

.field public u4StartIdx:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
