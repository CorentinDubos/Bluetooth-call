.class public Lcom/autochips/ipod/IPodSDK$STATUS_T;
.super Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STATUS_T"
.end annotation


# instance fields
.field public iPodStatus:Lcom/autochips/ipod/IPodSDK$STATUS_E;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1593
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;-><init>()V

    return-void
.end method


# virtual methods
.method public set(I)V
    .locals 0

    .line 1600
    invoke-static {p1}, Lcom/autochips/ipod/IPodSDK$STATUS_E;->valueOf(I)Lcom/autochips/ipod/IPodSDK$STATUS_E;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/ipod/IPodSDK$STATUS_T;->iPodStatus:Lcom/autochips/ipod/IPodSDK$STATUS_E;

    return-void
.end method
