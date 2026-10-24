.class Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/jar/dualscreen/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/config/jar/dualscreen/ActivityView;


# direct methods
.method constructor <init>(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;->this$0:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;->this$0:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    invoke-static {v0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->access$000(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;->this$0:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    invoke-static {v0, p1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->access$002(Lcom/hzbhd/config/jar/dualscreen/ActivityView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 202
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;->this$0:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->access$102(Lcom/hzbhd/config/jar/dualscreen/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;

    const-string p1, "ActivityView"

    const-string v0, "display set surface"

    .line 203
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;->this$0:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    invoke-static {v0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->access$200(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;->this$0:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    invoke-static {v1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->access$100(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init resize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;->this$0:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    invoke-static {p1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->access$300(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)Landroid/view/TextureView;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;->this$0:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    invoke-static {p2}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->access$000(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "ActivityView"

    const-string v0, "onSurfaceTextureDestroyed"

    .line 226
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string p1, "ActivityView"

    const-string v0, "onSurfaceTextureUpdated"

    .line 233
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
