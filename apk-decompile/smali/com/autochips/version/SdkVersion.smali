.class public Lcom/autochips/version/SdkVersion;
.super Ljava/lang/Object;
.source "SdkVersion.java"


# static fields
.field private static final BR:Ljava/lang/String; = "MAIN_BR"

.field private static final MM:Ljava/lang/String; = "01"

.field private static final Rev:Ljava/lang/String; = "005"

.field private static final TAG:Ljava/lang/String; = "sdkVersion"

.field private static final mm:Ljava/lang/String; = "00"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "version_jni"

    .line 34
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getBuildDate()Ljava/lang/String;
.end method

.method private static native getChangeList()I
.end method

.method public static printVersion()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autochips.jar: V01.00.005_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/autochips/version/SdkVersion;->getChangeList()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/autochips/version/SdkVersion;->getBuildDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sdkVersion"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sdkVersion"

    const-string v1, "getVersion"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
