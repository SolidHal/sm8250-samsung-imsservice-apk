.class Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferBackedInputStream;
.super Ljava/io/InputStream;
.source "FlatBufferBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlatBufferBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteBufferBackedInputStream"
.end annotation


# instance fields
.field buf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 1017
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1018
    iput-object p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferBackedInputStream;->buf:Ljava/nio/ByteBuffer;

    .line 1019
    return-void
.end method


# virtual methods
.method public read()I
    .locals 2

    .line 1023
    :try_start_0
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferBackedInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const/4 v1, -0x1

    return v1
.end method
