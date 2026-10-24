.class public Lcom/autochips/metazone/AtcMetazone;
.super Ljava/lang/Object;
.source "AtcMetazone.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ATCMetazone"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "metazone"

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

.method public static native flush(Z)I
.end method

.method public static native readbinary(J[BJ)I
.end method

.method public static native readreserved([BJ)I
.end method

.method public static native readval(J[J)I
.end method

.method public static native writebinary(J[BJ)I
.end method

.method public static native writereserved([BJ)I
.end method

.method public static native writeval(JJ)I
.end method
