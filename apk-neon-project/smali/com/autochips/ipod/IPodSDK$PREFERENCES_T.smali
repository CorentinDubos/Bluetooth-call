.class public Lcom/autochips/ipod/IPodSDK$PREFERENCES_T;
.super Ljava/lang/Object;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PREFERENCES_T"
.end annotation


# instance fields
.field public preferenceClassID:B

.field public preferenceSettingID:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(BB)V
    .locals 0

    .line 1322
    iput-byte p1, p0, Lcom/autochips/ipod/IPodSDK$PREFERENCES_T;->preferenceClassID:B

    .line 1323
    iput-byte p2, p0, Lcom/autochips/ipod/IPodSDK$PREFERENCES_T;->preferenceSettingID:B

    return-void
.end method
