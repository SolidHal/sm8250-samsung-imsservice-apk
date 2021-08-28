.class public Lcom/sec/internal/ims/servicemodules/ss/UtLog;
.super Ljava/lang/Object;
.source "UtLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractCrLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;
    .locals 14
    .param p0, "requestType"    # I
    .param p1, "response"    # [Landroid/os/Bundle;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v0, "crLog":Ljava/lang/StringBuilder;
    const/16 v1, 0x64

    const-string/jumbo v2, "}"

    const-string v3, ",{"

    const-string/jumbo v4, "serviceClass"

    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    const-string v7, ","

    const/4 v8, 0x0

    if-eq p0, v1, :cond_3

    const/16 v1, 0x66

    if-eq p0, v1, :cond_1

    const/16 v1, 0x68

    if-eq p0, v1, :cond_1

    const/16 v1, 0x72

    if-eq p0, v1, :cond_0

    goto/16 :goto_2

    .line 228
    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v8

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    goto/16 :goto_2

    .line 222
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, p1

    if-ge v1, v9, :cond_2

    .line 223
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, p1, v1

    invoke-virtual {v9, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    aget-object v9, p1, v1

    invoke-virtual {v9, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "i":I
    :cond_2
    goto :goto_2

    .line 204
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v9, p1

    if-ge v1, v9, :cond_6

    .line 205
    aget-object v9, p1, v1

    invoke-virtual {v9, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 206
    .local v9, "serviceClass":I
    aget-object v10, p1, v1

    const-string v11, "condition"

    invoke-virtual {v10, v11, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 207
    .local v10, "condition":I
    aget-object v11, p1, v1

    const-string v12, "number"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, "cfUri":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 209
    const-string v11, ""

    .line 212
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, p1, v1

    invoke-virtual {v12, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {v11}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/4 v12, 0x2

    if-ne v10, v12, :cond_5

    .line 215
    aget-object v12, p1, v1

    const-string v13, "NoReplyTimer"

    invoke-virtual {v12, v13, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_5
    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .end local v9    # "serviceClass":I
    .end local v10    # "condition":I
    .end local v11    # "cfUri":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    .end local v1    # "i":I
    :cond_6
    nop

    .line 233
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static extractCrLogFromUtProfile(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "profile"    # Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",>,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "crLog":Ljava/lang/StringBuilder;
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 82
    :pswitch_0
    const-string v1, "GET_SD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    goto/16 :goto_0

    .line 123
    :pswitch_1
    const-string v1, "PUT_CW,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    goto/16 :goto_0

    .line 92
    :pswitch_2
    const-string v1, "GET_CW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    goto/16 :goto_0

    .line 135
    :pswitch_3
    const-string v1, "PUT_COLR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    goto/16 :goto_0

    .line 104
    :pswitch_4
    const-string v1, "GET_COLR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    goto/16 :goto_0

    .line 132
    :pswitch_5
    const-string v1, "PUT_COLP,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    goto/16 :goto_0

    .line 101
    :pswitch_6
    const-string v1, "GET_COLP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    goto/16 :goto_0

    .line 129
    :pswitch_7
    const-string v1, "PUT_CLIR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    goto/16 :goto_0

    .line 98
    :pswitch_8
    const-string v1, "GET_CLIR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    goto/16 :goto_0

    .line 126
    :pswitch_9
    const-string v1, "PUT_CLIP,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    goto/16 :goto_0

    .line 95
    :pswitch_a
    const-string v1, "GET_CLIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    goto/16 :goto_0

    .line 116
    :pswitch_b
    const-string v1, "PUT_CB,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCbType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->password:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    goto :goto_0

    .line 89
    :pswitch_c
    const-string v1, "GET_CB,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCbType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    goto :goto_0

    .line 107
    :pswitch_d
    const-string v1, "PUT_CF,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCfType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    goto :goto_0

    .line 85
    :pswitch_e
    const-string v1, "GET_CF,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCfType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    nop

    .line 140
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static extractLogFromError(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .param p0, "requestType"    # I
    .param p1, "error"    # Landroid/os/Bundle;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "logBuilder":Ljava/lang/StringBuilder;
    const/16 v1, 0x6c

    if-eq p0, v1, :cond_2

    const/16 v1, 0x72

    if-eq p0, v1, :cond_1

    const/16 v1, 0x73

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 255
    :pswitch_0
    const-string/jumbo v1, "updateCallBarring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    goto :goto_0

    .line 245
    :pswitch_1
    const-string/jumbo v1, "queryCallBarring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    goto :goto_0

    .line 251
    :pswitch_2
    const-string/jumbo v1, "updateCallForward"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    goto :goto_0

    .line 241
    :pswitch_3
    const-string/jumbo v1, "queryCallForward"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    goto :goto_0

    .line 258
    :cond_0
    const-string/jumbo v1, "updateCallWaiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    goto :goto_0

    .line 248
    :cond_1
    const-string/jumbo v1, "queryCallWaiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    goto :goto_0

    .line 261
    :cond_2
    const-string/jumbo v1, "queryCLIR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    nop

    .line 266
    :goto_0
    const-string v1, " {requestType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringRequestType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v2, " error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "originErrorCode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, " converted error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errorCode"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static extractLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;
    .locals 16
    .param p0, "requestType"    # I
    .param p1, "response"    # [Landroid/os/Bundle;

    .line 144
    move/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v2, "logBuilder":Ljava/lang/StringBuilder;
    const/16 v3, 0x6c

    const-string/jumbo v4, "}"

    const/4 v5, 0x1

    const-string v6, ","

    const/4 v7, 0x0

    if-eq v0, v3, :cond_6

    const/16 v3, 0x72

    const-string/jumbo v8, "status"

    if-eq v0, v3, :cond_5

    const/16 v3, 0x73

    if-eq v0, v3, :cond_4

    const-string v3, " serviceClass: "

    const-string v9, " status: "

    const-string v10, "condition"

    const-string/jumbo v11, "serviceClass"

    packed-switch v0, :pswitch_data_0

    .line 193
    const-string/jumbo v3, "requestType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringRequestType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] {Success}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 183
    :pswitch_0
    const-string/jumbo v3, "updateCallBarring {Success}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    goto/16 :goto_2

    .line 168
    :pswitch_1
    const-string/jumbo v12, "queryCallBarring"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v1

    if-ge v12, v13, :cond_0

    .line 170
    const-string v13, " {cbType: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v1, v12

    invoke-virtual {v13, v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v1, v12

    invoke-virtual {v13, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v1, v12

    invoke-virtual {v13, v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 174
    .end local v12    # "i":I
    :cond_0
    goto/16 :goto_2

    .line 179
    :pswitch_2
    const-string/jumbo v3, "updateCallForward {Success}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    goto/16 :goto_2

    .line 148
    :pswitch_3
    const-string/jumbo v12, "queryCallForward"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1
    array-length v13, v1

    if-ge v12, v13, :cond_3

    .line 150
    aget-object v13, v1, v12

    invoke-virtual {v13, v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 151
    .local v13, "serviceClass":I
    aget-object v14, v1, v12

    invoke-virtual {v14, v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 152
    .local v14, "condition":I
    aget-object v15, v1, v12

    const-string v5, "number"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "cfUri":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 154
    const-string v5, ""

    .line 157
    :cond_1
    const-string v15, " {cfType: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v1, v12

    invoke-virtual {v15, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v15, " number: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    .line 161
    const-string v15, " NoReplyTimer: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v1, v12

    const-string v0, "NoReplyTimer"

    invoke-virtual {v15, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .end local v5    # "cfUri":Ljava/lang/String;
    .end local v13    # "serviceClass":I
    .end local v14    # "condition":I
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    move/from16 v0, p0

    goto :goto_1

    .line 165
    .end local v12    # "i":I
    :cond_3
    goto :goto_2

    .line 186
    :cond_4
    const-string/jumbo v0, "updateCallWaiting {Success}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    goto :goto_2

    .line 176
    :cond_5
    const-string/jumbo v0, "queryCallWaiting"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {status: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v7

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    goto :goto_2

    .line 189
    :cond_6
    aget-object v0, v1, v7

    const-string/jumbo v3, "queryClir"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 190
    .local v0, "queryClir":[I
    const-string/jumbo v3, "queryCLIR {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    nop

    .line 196
    .end local v0    # "queryClir":[I
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static extractLogFromUtProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;
    .locals 7
    .param p0, "profile"    # Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsUt["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .local v0, "logBuilder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const-string v2, " cbType = "

    const-string v3, " action = "

    const-string v4, " cfType = "

    const-string v5, " enable = "

    const-string v6, " ssClass = "

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 14
    :pswitch_0
    const-string/jumbo v1, "querySimServDoc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    goto/16 :goto_0

    .line 55
    :pswitch_1
    const-string/jumbo v1, "updateCallWaiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    goto/16 :goto_0

    .line 24
    :pswitch_2
    const-string/jumbo v1, "queryCallWaiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    goto/16 :goto_0

    .line 69
    :pswitch_3
    const-string/jumbo v1, "updateCOLR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " presentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    goto/16 :goto_0

    .line 36
    :pswitch_4
    const-string/jumbo v1, "queryCOLR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    goto/16 :goto_0

    .line 66
    :pswitch_5
    const-string/jumbo v1, "updateCOLP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    goto/16 :goto_0

    .line 33
    :pswitch_6
    const-string/jumbo v1, "queryCOLP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    goto/16 :goto_0

    .line 63
    :pswitch_7
    const-string/jumbo v1, "updateCLIR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " clirMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringClirMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    goto/16 :goto_0

    .line 30
    :pswitch_8
    const-string/jumbo v1, "queryCLIR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    goto/16 :goto_0

    .line 60
    :pswitch_9
    const-string/jumbo v1, "updateCLIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    goto/16 :goto_0

    .line 27
    :pswitch_a
    const-string/jumbo v1, "queryCLIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    goto/16 :goto_0

    .line 48
    :pswitch_b
    const-string/jumbo v1, "updateCallBarring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, " password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->password:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    goto :goto_0

    .line 21
    :pswitch_c
    const-string/jumbo v1, "queryCallBarring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    goto :goto_0

    .line 39
    :pswitch_d
    const-string/jumbo v1, "updateCallForward"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, " noReplyTimer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, " number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    goto :goto_0

    .line 17
    :pswitch_e
    const-string/jumbo v1, "queryCallForward"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    nop

    .line 74
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCrLogAction(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .line 353
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 364
    const/4 v0, 0x0

    return-object v0

    .line 361
    :cond_0
    const-string v0, "E"

    return-object v0

    .line 359
    :cond_1
    const-string v0, "R"

    return-object v0

    .line 355
    :cond_2
    const-string v0, "A"

    return-object v0

    .line 357
    :cond_3
    const-string v0, "D"

    return-object v0
.end method

.method public static getCrLogCbType(I)Ljava/lang/String;
    .locals 1
    .param p0, "condition"    # I

    .line 460
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 473
    const/4 v0, 0x0

    return-object v0

    .line 470
    :cond_0
    const-string v0, "ICWR"

    return-object v0

    .line 468
    :cond_1
    const-string v0, "OIEXHC"

    return-object v0

    .line 466
    :cond_2
    const-string v0, "OI"

    return-object v0

    .line 464
    :cond_3
    const-string v0, "AO"

    return-object v0

    .line 462
    :cond_4
    const-string v0, "AI"

    return-object v0
.end method

.method public static getCrLogCfType(I)Ljava/lang/String;
    .locals 1
    .param p0, "condition"    # I

    .line 428
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 439
    const/4 v0, 0x0

    return-object v0

    .line 436
    :cond_0
    const-string v0, "NRc"

    return-object v0

    .line 434
    :cond_1
    const-string v0, "NRy"

    return-object v0

    .line 432
    :cond_2
    const-string v0, "B"

    return-object v0

    .line 430
    :cond_3
    const-string v0, "U"

    return-object v0
.end method

.method public static getCrLogSsClass(I)Ljava/lang/String;
    .locals 1
    .param p0, "serviceClass"    # I

    .line 323
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_2

    .line 334
    const-string v0, "?"

    return-object v0

    .line 327
    :cond_0
    const-string v0, "V"

    return-object v0

    .line 325
    :cond_1
    const-string v0, "A"

    return-object v0

    .line 330
    :cond_2
    const-string v0, "ALL"

    return-object v0
.end method

.method private static getCrLogStatus(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .line 282
    if-nez p0, :cond_0

    .line 283
    const-string v0, "X"

    return-object v0

    .line 285
    :cond_0
    const-string v0, "O"

    return-object v0
.end method

.method private static getCrLogStatus(Z)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # Z

    .line 298
    if-eqz p0, :cond_0

    .line 299
    const-string v0, "O"

    return-object v0

    .line 301
    :cond_0
    const-string v0, "X"

    return-object v0
.end method

.method public static getStringAction(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .line 338
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 349
    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_0
    const-string v0, "Erasure"

    return-object v0

    .line 344
    :cond_1
    const-string v0, "Registration"

    return-object v0

    .line 340
    :cond_2
    const-string v0, "Activation"

    return-object v0

    .line 342
    :cond_3
    const-string v0, "Deactivation"

    return-object v0
.end method

.method public static getStringCbType(I)Ljava/lang/String;
    .locals 1
    .param p0, "condition"    # I

    .line 443
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 456
    const/4 v0, 0x0

    return-object v0

    .line 453
    :cond_0
    const-string v0, "Incoming calls when roaming"

    return-object v0

    .line 451
    :cond_1
    const-string v0, "Outgoing international except home"

    return-object v0

    .line 449
    :cond_2
    const-string v0, "Outgoing international"

    return-object v0

    .line 447
    :cond_3
    const-string v0, "All outgoing"

    return-object v0

    .line 445
    :cond_4
    const-string v0, "All incoming"

    return-object v0
.end method

.method public static getStringCfType(I)Ljava/lang/String;
    .locals 1
    .param p0, "condition"    # I

    .line 413
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 424
    const/4 v0, 0x0

    return-object v0

    .line 421
    :cond_0
    const-string v0, "Not reachable"

    return-object v0

    .line 419
    :cond_1
    const-string v0, "Unanswered"

    return-object v0

    .line 417
    :cond_2
    const-string v0, "Busy"

    return-object v0

    .line 415
    :cond_3
    const-string v0, "Unconditional"

    return-object v0
.end method

.method public static getStringClirMode(I)Ljava/lang/String;
    .locals 1
    .param p0, "condition"    # I

    .line 477
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 486
    const/4 v0, 0x0

    return-object v0

    .line 483
    :cond_0
    const-string v0, "Suppression"

    return-object v0

    .line 481
    :cond_1
    const-string v0, "Invocation"

    return-object v0

    .line 479
    :cond_2
    const-string v0, "Default"

    return-object v0
.end method

.method public static getStringRequestType(I)Ljava/lang/String;
    .locals 1
    .param p0, "requestType"    # I

    .line 368
    packed-switch p0, :pswitch_data_0

    .line 409
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 406
    :pswitch_1
    const-string v0, "SS_PUT_ACB"

    return-object v0

    .line 404
    :pswitch_2
    const-string v0, "SS_GET_ACB"

    return-object v0

    .line 402
    :pswitch_3
    const-string v0, "SS_GET_SD"

    return-object v0

    .line 400
    :pswitch_4
    const-string v0, "SS_PUT_CW"

    return-object v0

    .line 398
    :pswitch_5
    const-string v0, "SS_GET_CW"

    return-object v0

    .line 396
    :pswitch_6
    const-string v0, "SS_PUT_COLR"

    return-object v0

    .line 394
    :pswitch_7
    const-string v0, "SS_GET_COLR"

    return-object v0

    .line 392
    :pswitch_8
    const-string v0, "SS_PUT_COLP"

    return-object v0

    .line 390
    :pswitch_9
    const-string v0, "SS_GET_COLP"

    return-object v0

    .line 388
    :pswitch_a
    const-string v0, "SS_PUT_CLIR"

    return-object v0

    .line 386
    :pswitch_b
    const-string v0, "SS_GET_CLIR"

    return-object v0

    .line 384
    :pswitch_c
    const-string v0, "SS_PUT_CLIP"

    return-object v0

    .line 382
    :pswitch_d
    const-string v0, "SS_GET_CLIP"

    return-object v0

    .line 380
    :pswitch_e
    const-string v0, "SS_PUT_OCB"

    return-object v0

    .line 378
    :pswitch_f
    const-string v0, "SS_GET_OCB"

    return-object v0

    .line 376
    :pswitch_10
    const-string v0, "SS_PUT_ICB"

    return-object v0

    .line 374
    :pswitch_11
    const-string v0, "SS_GET_ICB"

    return-object v0

    .line 372
    :pswitch_12
    const-string v0, "SS_PUT_CF"

    return-object v0

    .line 370
    :pswitch_13
    const-string v0, "SS_GET_CF"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getStringSsClass(I)Ljava/lang/String;
    .locals 1
    .param p0, "serviceClass"    # I

    .line 306
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_3

    .line 319
    const-string v0, "INVALID CLASS"

    return-object v0

    .line 312
    :cond_0
    const-string v0, "VIDEO"

    return-object v0

    .line 310
    :cond_1
    const-string v0, "SMS"

    return-object v0

    .line 308
    :cond_2
    const-string v0, "AUDIO"

    return-object v0

    .line 315
    :cond_3
    const-string v0, "ALL"

    return-object v0
.end method

.method private static getStringStatus(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .line 274
    if-nez p0, :cond_0

    .line 275
    const-string v0, "Deactivated"

    return-object v0

    .line 277
    :cond_0
    const-string v0, "Activated"

    return-object v0
.end method

.method private static getStringStatus(Z)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # Z

    .line 290
    if-eqz p0, :cond_0

    .line 291
    const-string v0, "Activated"

    return-object v0

    .line 293
    :cond_0
    const-string v0, "Deactivated"

    return-object v0
.end method
