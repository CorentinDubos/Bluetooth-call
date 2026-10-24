.class public Lcom/hzbhd/misc/opengl/OpenGLRenderer;
.super Ljava/lang/Object;
.source "OpenGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String;

.field static final TEXTURE_NO_ROTATION:[F

.field static final TEXTURE_ROTATED_180:[F

.field static final TEXTURE_ROTATED_270:[F

.field static final TEXTURE_ROTATED_90:[F


# instance fields
.field mContext:Landroid/content/Context;

.field private mData:Lcom/hzbhd/misc/opengl/Data;

.field private mGLUniformHeightHandler:I

.field private mGLUniformTexture:I

.field private mGLUniformUvTexture:I

.field private mGLUniformWidthHandler:I

.field private mHeight:I

.field private mPositionHandler:I

.field private mProgramHandler:I

.field mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

.field private mTextureCoordinateHandler:I

.field private mTextureId:I

.field private mUvTextureId:I

.field mVerticesBuffer:Ljava/nio/FloatBuffer;

.field private mWidth:I

.field textureCoordinate:[F

.field vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/hzbhd/misc/opengl/OpenGLRenderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_opengl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 43
    fill-array-data v1, :array_0

    sput-object v1, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TEXTURE_NO_ROTATION:[F

    new-array v1, v0, [F

    .line 48
    fill-array-data v1, :array_1

    sput-object v1, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TEXTURE_ROTATED_90:[F

    new-array v1, v0, [F

    .line 53
    fill-array-data v1, :array_2

    sput-object v1, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TEXTURE_ROTATED_180:[F

    new-array v0, v0, [F

    .line 58
    fill-array-data v0, :array_3

    sput-object v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TEXTURE_ROTATED_270:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TEXTURE_ROTATED_270:[F

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->textureCoordinate:[F

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 66
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->vertices:[F

    .line 99
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mContext:Landroid/content/Context;

    .line 102
    array-length p1, v0

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 103
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 104
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->vertices:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->textureCoordinate:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    .line 107
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 108
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 109
    iget-object v1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->textureCoordinate:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hzbhd/misc/opengl/Data;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TEXTURE_ROTATED_270:[F

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->textureCoordinate:[F

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 66
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->vertices:[F

    .line 112
    sget-object v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TAG:Ljava/lang/String;

    const-string v1, "OpenGLRenderer"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method public static loadRawString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 371
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 375
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 376
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 379
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 381
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    .line 310
    sget-object p1, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TAG:Ljava/lang/String;

    const-string v0, "onDrawFrame"

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 313
    iget p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mProgramHandler:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p1, 0x4100

    .line 315
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 317
    iget v2, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mPositionHandler:I

    iget-object v7, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 319
    iget p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mPositionHandler:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 320
    iget v2, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mTextureCoordinateHandler:I

    iget-object v7, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 322
    iget p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mTextureCoordinateHandler:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 323
    iget p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mGLUniformWidthHandler:I

    iget v2, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mWidth:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 324
    iget p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mGLUniformHeightHandler:I

    iget v2, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mHeight:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const p1, 0x84c0

    .line 326
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 327
    iget p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mTextureId:I

    const/16 v2, 0xde1

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 328
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    if-eqz p1, :cond_0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    .line 329
    iget v6, p1, Lcom/hzbhd/misc/opengl/Data;->w:I

    iget-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    iget v7, p1, Lcom/hzbhd/misc/opengl/Data;->h:I

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    iget-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    iget-object p1, p1, Lcom/hzbhd/misc/opengl/Data;->y:[B

    .line 331
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 329
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 333
    :cond_0
    iget p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mGLUniformTexture:I

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c1

    .line 335
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 336
    iget p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mUvTextureId:I

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 337
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    if-eqz p1, :cond_1

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x190a

    .line 338
    iget p1, p1, Lcom/hzbhd/misc/opengl/Data;->w:I

    div-int/lit8 v7, p1, 0x2

    iget-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    iget p1, p1, Lcom/hzbhd/misc/opengl/Data;->h:I

    div-int/lit8 v8, p1, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x190a

    const/16 v11, 0x1401

    iget-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    iget-object p1, p1, Lcom/hzbhd/misc/opengl/Data;->uv:[B

    .line 340
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 338
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 342
    :cond_1
    iget p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mGLUniformUvTexture:I

    const/4 v4, 0x1

    invoke-static {p1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    const/4 v4, 0x4

    .line 344
    invoke-static {p1, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 345
    iget p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mPositionHandler:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 346
    iget p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mTextureCoordinateHandler:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 347
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 349
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 351
    sget-object p1, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the time is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 363
    sget-object p1, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 364
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 365
    iput p2, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mWidth:I

    .line 366
    iput p3, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mHeight:I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 22

    move-object/from16 v0, p0

    .line 125
    sget-object v1, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->TAG:Ljava/lang/String;

    const-string v2, "onSurfaceCreated"

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->vertices:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 128
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 129
    iget-object v2, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->vertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    iget-object v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->textureCoordinate:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 132
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 133
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 134
    iget-object v3, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->textureCoordinate:[F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 135
    invoke-static {v1, v1, v1, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "opengl"

    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 142
    invoke-static {v1, v4, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 143
    aget v5, v4, v2

    const/16 v6, 0xde1

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v5, 0x2800

    const v7, 0x46180400    # 9729.0f

    .line 144
    invoke-static {v6, v5, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v8, 0x2801

    .line 146
    invoke-static {v6, v8, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v9, 0x2802

    const v10, 0x47012f00    # 33071.0f

    .line 148
    invoke-static {v6, v9, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v11, 0x2803

    .line 150
    invoke-static {v6, v11, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 152
    iget-object v12, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    if-eqz v12, :cond_0

    const/16 v13, 0xde1

    const/4 v14, 0x0

    const/16 v15, 0x1909

    .line 153
    iget v12, v12, Lcom/hzbhd/misc/opengl/Data;->w:I

    iget-object v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    iget v1, v1, Lcom/hzbhd/misc/opengl/Data;->h:I

    const/16 v18, 0x0

    const/16 v19, 0x1909

    const/16 v20, 0x1401

    iget-object v11, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    iget-object v11, v11, Lcom/hzbhd/misc/opengl/Data;->y:[B

    .line 155
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v21

    move/from16 v16, v12

    move/from16 v17, v1

    .line 153
    invoke-static/range {v13 .. v21}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 157
    :cond_0
    aget v1, v4, v2

    iput v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mTextureId:I

    const/4 v1, 0x1

    .line 159
    aget v11, v4, v1

    invoke-static {v6, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 160
    invoke-static {v6, v5, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 162
    invoke-static {v6, v8, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 164
    invoke-static {v6, v9, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2803

    .line 166
    invoke-static {v6, v5, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 168
    iget-object v5, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    if-eqz v5, :cond_1

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/16 v8, 0x190a

    .line 169
    iget v5, v5, Lcom/hzbhd/misc/opengl/Data;->w:I

    const/4 v9, 0x2

    div-int/2addr v5, v9

    iget-object v10, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    iget v10, v10, Lcom/hzbhd/misc/opengl/Data;->h:I

    div-int/2addr v10, v9

    const/4 v11, 0x0

    const/16 v12, 0x190a

    const/16 v13, 0x1401

    iget-object v9, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    iget-object v9, v9, Lcom/hzbhd/misc/opengl/Data;->uv:[B

    .line 171
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    move v9, v5

    .line 169
    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 179
    :cond_1
    aget v4, v4, v1

    iput v4, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mUvTextureId:I

    const v4, 0x8b31

    .line 200
    invoke-static {v4}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v4

    const-string v5, "Compilation:"

    const v6, 0x8b81

    if-eqz v4, :cond_2

    .line 203
    iget-object v7, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mContext:Landroid/content/Context;

    sget v8, Lcom/hzbhd/midware/proxy/R$raw;->filter_vs:I

    .line 204
    invoke-static {v7, v8}, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->loadRawString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 206
    invoke-static {v4}, Landroid/opengl/GLES20;->glCompileShader(I)V

    new-array v7, v1, [I

    .line 209
    invoke-static {v4, v6, v7, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 212
    aget v7, v7, v2

    if-nez v7, :cond_2

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {v4}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    invoke-static {v3, v7}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v4, v2

    :cond_2
    if-eqz v4, :cond_7

    const v7, 0x8b30

    .line 227
    invoke-static {v7}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v7

    if-eqz v7, :cond_3

    .line 230
    iget-object v8, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mContext:Landroid/content/Context;

    sget v9, Lcom/hzbhd/midware/proxy/R$raw;->filter_fs:I

    .line 231
    invoke-static {v8, v9}, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->loadRawString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 230
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 233
    invoke-static {v7}, Landroid/opengl/GLES20;->glCompileShader(I)V

    new-array v8, v1, [I

    .line 236
    invoke-static {v7, v6, v8, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 240
    aget v6, v8, v2

    if-nez v6, :cond_3

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {v7}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-static {v3, v5}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v7, v2

    :cond_3
    if-eqz v7, :cond_6

    .line 254
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    const-string v6, "inputTextureCoordinate"

    const-string v8, "position"

    if-eqz v5, :cond_4

    .line 257
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 259
    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 261
    invoke-static {v5, v2, v8}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 263
    invoke-static {v5, v1, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 266
    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v1, v1, [I

    const v4, 0x8b82

    .line 269
    invoke-static {v5, v4, v1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 272
    aget v1, v1, v2

    if-nez v1, :cond_4

    .line 273
    invoke-static {v5}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_4
    move v2, v5

    :goto_0
    if-eqz v2, :cond_5

    .line 283
    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mPositionHandler:I

    .line 284
    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mTextureCoordinateHandler:I

    const-string v1, "inputImageTexture"

    .line 286
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mGLUniformTexture:I

    const-string/jumbo v1, "uvTexture"

    .line 288
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mGLUniformUvTexture:I

    const-string/jumbo v1, "width"

    .line 290
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mGLUniformWidthHandler:I

    const-string v1, "height"

    .line 292
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mGLUniformHeightHandler:I

    .line 296
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 297
    iput v2, v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mProgramHandler:I

    const-string v1, "Init success."

    .line 299
    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 279
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating program."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating fragment shader."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating vertex shader."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setData(Lcom/hzbhd/misc/opengl/Data;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->mData:Lcom/hzbhd/misc/opengl/Data;

    return-void
.end method
