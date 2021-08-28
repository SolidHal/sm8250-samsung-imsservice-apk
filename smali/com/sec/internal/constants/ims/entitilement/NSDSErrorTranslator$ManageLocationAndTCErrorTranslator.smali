.class Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$ManageLocationAndTCErrorTranslator;
.super Ljava/lang/Object;
.source "NSDSErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManageLocationAndTCErrorTranslator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translate(I)I
    .locals 3
    .param p0, "nsdsErrorCode"    # I

    .line 130
    const/4 v0, -0x1

    .line 131
    .local v0, "translatedErrorCode":I
    const/16 v1, 0x3ec

    if-eq p0, v1, :cond_0

    const/16 v1, 0x405

    if-eq p0, v1, :cond_0

    const/16 v1, 0x411

    if-eq p0, v1, :cond_0

    const/16 v1, 0x457

    if-eq p0, v1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not translate nsds error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ManageLocationAndTCErrorTranslator"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_0
    const/16 v0, 0x708

    .line 137
    nop

    .line 142
    :goto_0
    return v0
.end method
