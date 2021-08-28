.class Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$Request3gppAuthErrorTranslator;
.super Ljava/lang/Object;
.source "NSDSErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Request3gppAuthErrorTranslator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translate(I)I
    .locals 3
    .param p0, "nsdsErrorCode"    # I

    .line 77
    const/4 v0, -0x1

    .line 78
    .local v0, "translatedErrorCode":I
    const/16 v1, 0x3ec

    if-eq p0, v1, :cond_1

    const/16 v1, 0x457

    if-eq p0, v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not translate nsds error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisteredMsisdnErrorTranslator"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_0
    const/16 v0, 0x3ea

    .line 84
    goto :goto_0

    .line 80
    :cond_1
    const/16 v0, 0x3e9

    .line 81
    nop

    .line 89
    :goto_0
    return v0
.end method
