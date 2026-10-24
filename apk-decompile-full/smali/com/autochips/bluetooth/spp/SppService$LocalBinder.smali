.class public Lcom/autochips/bluetooth/spp/SppService$LocalBinder;
.super Landroid/os/Binder;
.source "SppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/spp/SppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/spp/SppService;


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/spp/SppService;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/autochips/bluetooth/spp/SppService$LocalBinder;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getSppService()Lcom/autochips/bluetooth/spp/SppService;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService$LocalBinder;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    return-object v0
.end method
