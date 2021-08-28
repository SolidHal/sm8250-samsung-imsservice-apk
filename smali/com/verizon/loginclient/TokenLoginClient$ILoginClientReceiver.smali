.class public interface abstract Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/TokenLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILoginClientReceiver"
.end annotation


# virtual methods
.method public abstract onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V
.end method

.method public abstract onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V
.end method
