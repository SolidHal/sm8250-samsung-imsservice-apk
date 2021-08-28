.class Lcom/sec/internal/helper/HttpRequest$UploadProgress$1;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/sec/internal/helper/HttpRequest$UploadProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/HttpRequest$UploadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public onUpload(JJ)V
    .locals 0
    .param p1, "uploaded"    # J
    .param p3, "total"    # J

    .line 398
    return-void
.end method
