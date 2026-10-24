.class public Lcom/autochips/settings/AtcSettings;
.super Ljava/lang/Object;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/settings/AtcSettings$VCP;,
        Lcom/autochips/settings/AtcSettings$DVP;,
        Lcom/autochips/settings/AtcSettings$Audio;,
        Lcom/autochips/settings/AtcSettings$Display;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AtcSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AtcSettings"

    const-string v1, "[AtcSettings]: System.loadLibrary(\"libmtkset.so\");"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mtkset"

    .line 29
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "load ok"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
