.class Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$ManageServiceErrorTranslator;
.super Ljava/lang/Object;
.source "NSDSErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManageServiceErrorTranslator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translate(II)I
    .locals 10
    .param p0, "operation"    # I
    .param p1, "nsdsErrorCode"    # I

    .line 208
    const/4 v0, -0x1

    .line 209
    .local v0, "translatedErrorCode":I
    const/16 v1, 0x418

    const-string v2, "could not translate nsds error code:"

    const/16 v3, 0x457

    const/16 v4, 0x405

    const/16 v5, 0x400

    const/16 v6, 0x3ec

    const-string v7, "ManageServiceErrorTranslator"

    if-eqz p0, :cond_a

    const/4 v8, 0x1

    const/16 v9, 0x41d

    if-eq p0, v8, :cond_8

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not translate operation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 288
    :cond_0
    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v9, :cond_1

    if-eq p1, v3, :cond_1

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    goto/16 :goto_0

    .line 294
    :cond_1
    const/16 v0, 0x6a4

    .line 295
    goto/16 :goto_0

    .line 273
    :cond_2
    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_3

    if-eq p1, v9, :cond_3

    if-eq p1, v3, :cond_3

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    goto/16 :goto_0

    .line 279
    :cond_3
    const/16 v0, 0x5dc

    .line 280
    goto/16 :goto_0

    .line 251
    :cond_4
    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v9, :cond_5

    if-eq p1, v3, :cond_7

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    goto/16 :goto_0

    .line 261
    :cond_5
    const/16 v0, 0x6a6

    .line 262
    goto :goto_0

    .line 258
    :cond_6
    const/16 v0, 0x6a5

    .line 259
    goto :goto_0

    .line 255
    :cond_7
    const/16 v0, 0x6a4

    .line 256
    goto :goto_0

    .line 235
    :cond_8
    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_9

    if-eq p1, v1, :cond_9

    if-eq p1, v9, :cond_9

    if-eq p1, v3, :cond_9

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    goto :goto_0

    .line 242
    :cond_9
    const/16 v0, 0x640

    .line 243
    goto :goto_0

    .line 211
    :cond_a
    if-eq p1, v6, :cond_e

    if-eq p1, v5, :cond_d

    if-eq p1, v4, :cond_e

    const/16 v4, 0x414

    if-eq p1, v4, :cond_c

    if-eq p1, v1, :cond_b

    if-eq p1, v3, :cond_e

    const/16 v1, 0x410

    if-eq p1, v1, :cond_e

    const/16 v1, 0x411

    if-eq p1, v1, :cond_e

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    goto :goto_0

    .line 226
    :cond_b
    const/16 v0, 0x5df

    .line 227
    goto :goto_0

    .line 223
    :cond_c
    const/16 v0, 0x5de

    .line 224
    goto :goto_0

    .line 220
    :cond_d
    const/16 v0, 0x5dd

    .line 221
    goto :goto_0

    .line 217
    :cond_e
    const/16 v0, 0x5dc

    .line 218
    nop

    .line 305
    :goto_0
    return v0
.end method
