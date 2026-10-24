.class Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$1;
.super Ljava/lang/Thread;
.source "SmartPowerDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;


# direct methods
.method constructor <init>(Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$1;->this$0:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 55
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 56
    iget-object v0, p0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$1;->this$0:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;

    invoke-virtual {v0}, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->getMsg()V

    return-void
.end method
