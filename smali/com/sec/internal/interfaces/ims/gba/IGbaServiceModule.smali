.class public interface abstract Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
.super Ljava/lang/Object;
.source "IGbaServiceModule.java"


# virtual methods
.method public abstract getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)V
.end method

.method public abstract getGbaCallbacks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImei(I)Ljava/lang/String;
.end method

.method public abstract getImpi(I)Ljava/lang/String;
.end method

.method public abstract getNafExternalKeyBase64Decoded(I[B[B)Ljava/lang/String;
.end method

.method public abstract getPassword(Ljava/lang/String;ZI)Lcom/sec/internal/ims/gba/params/GbaData;
.end method

.method public abstract initGbaAccessibleObj()Z
.end method

.method public abstract isGbaUiccSupported(I)Z
.end method

.method public abstract resetGbaKey(Ljava/lang/String;I)V
.end method

.method public abstract storeGbaBootstrapParams([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract storeGbaDataAndGenerateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;
.end method
