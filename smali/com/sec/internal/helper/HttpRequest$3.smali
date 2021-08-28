.class Lcom/sec/internal/helper/HttpRequest$3;
.super Lcom/sec/internal/helper/HttpRequest$CloseOperation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/helper/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/internal/helper/HttpRequest$CloseOperation<",
        "Lcom/sec/internal/helper/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/HttpRequest;

.field final synthetic val$input:Ljava/io/InputStream;

.field final synthetic val$output:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/HttpRequest;Ljava/io/Closeable;ZLjava/io/FileOutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/helper/HttpRequest;
    .param p2, "closeable"    # Ljava/io/Closeable;
    .param p3, "ignoreCloseExceptions"    # Z
    .param p4, "fileOutputStream"    # Ljava/io/FileOutputStream;

    .line 1146
    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    iput-object p5, p0, Lcom/sec/internal/helper/HttpRequest$3;->val$input:Ljava/io/InputStream;

    iput-object p6, p0, Lcom/sec/internal/helper/HttpRequest$3;->val$output:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/helper/HttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;ZLjava/io/FileOutputStream;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/helper/HttpRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->access$100(Lcom/sec/internal/helper/HttpRequest;)I

    move-result v0

    new-array v0, v0, [B

    .line 1152
    .local v0, "buffer":[B
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest$3;->val$input:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1153
    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest$3;->val$output:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1154
    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest$3;->val$output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 1155
    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    int-to-long v3, v2

    invoke-static {v1, v3, v4}, Lcom/sec/internal/helper/HttpRequest;->access$214(Lcom/sec/internal/helper/HttpRequest;J)J

    .line 1156
    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v1}, Lcom/sec/internal/helper/HttpRequest;->access$400(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v3}, Lcom/sec/internal/helper/HttpRequest;->access$200(Lcom/sec/internal/helper/HttpRequest;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v5}, Lcom/sec/internal/helper/HttpRequest;->access$300(Lcom/sec/internal/helper/HttpRequest;)J

    move-result-wide v5

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/sec/internal/helper/HttpRequest$UploadProgress;->onUpload(JJ)V

    .line 1157
    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v1}, Lcom/sec/internal/helper/HttpRequest;->access$400(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/helper/HttpRequest$UploadProgress;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    return-object v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest$3;->run()Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0
.end method
