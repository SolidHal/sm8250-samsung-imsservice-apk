.class public interface abstract Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;
.super Ljava/lang/Object;
.source "IdentityLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/IdentityLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IIdentityResultReceiver"
.end annotation


# virtual methods
.method public abstract onErrorResult(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Ljava/lang/Throwable;)V
.end method

.method public abstract onIdentityResult(Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;)V
.end method
