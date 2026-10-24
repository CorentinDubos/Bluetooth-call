.class public final Lcom/hzbhd/midware/constant/ServiceConstants$Bluetooth$STATUS;
.super Ljava/lang/Object;
.source "ServiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/ServiceConstants$Bluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "STATUS"
.end annotation


# static fields
.field public static final ONCONNECTED:Ljava/lang/String; = "onconnected"

.field public static final ONDISCONNECTED:Ljava/lang/String; = "ondisconnected"

.field public static final ONIDLE:Ljava/lang/String; = "onidle"

.field public static final ONINCOMING:Ljava/lang/String; = "onincoming"

.field public static final ONMAKECALL:Ljava/lang/String; = "onmakecall"

.field public static final ONOFFHOOK:Ljava/lang/String; = "onoffhook"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
