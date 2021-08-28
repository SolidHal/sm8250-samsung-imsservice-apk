.class public interface abstract Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
.super Ljava/lang/Object;
.source "HttpRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpRequestCallback"
.end annotation


# virtual methods
.method public abstract onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
.end method

.method public abstract onFail(Ljava/io/IOException;)V
.end method
