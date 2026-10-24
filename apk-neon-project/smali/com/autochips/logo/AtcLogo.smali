.class public Lcom/autochips/logo/AtcLogo;
.super Ljava/lang/Object;
.source "AtcLogo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ATCLogo"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "atclogo"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native readlogo([BII)I
.end method

.method public static native writelogo([BII)I
.end method
