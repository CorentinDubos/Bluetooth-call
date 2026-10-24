.class public Lcom/autochips/ipod/IPodSDK$DIGITALAUDIO_CONFIGUE_T;
.super Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DIGITALAUDIO_CONFIGUE_T"
.end annotation


# instance fields
.field public sampleRateSupportFromIpod:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1574
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;-><init>()V

    return-void
.end method


# virtual methods
.method public set(S)V
    .locals 0

    .line 1584
    iput-short p1, p0, Lcom/autochips/ipod/IPodSDK$DIGITALAUDIO_CONFIGUE_T;->sampleRateSupportFromIpod:S

    return-void
.end method
