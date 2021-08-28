.class public abstract Ljavax/mail/Transport;
.super Ljavax/mail/Service;
.source "Transport.java"


# instance fields
.field private transportListeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 1
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .line 77
    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 78
    return-void
.end method

.method public static send(Ljavax/mail/Message;)V
    .locals 1
    .param p0, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 118
    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    invoke-static {p0, v0}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    .line 119
    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 0
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 140
    invoke-static {p0, p1}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    .line 141
    return-void
.end method

.method private static send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 21
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 147
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "No recipient addresses"

    if-eqz v2, :cond_15

    array-length v3, v2

    if-eqz v3, :cond_15

    .line 154
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 157
    .local v3, "protocols":Ljava/util/Hashtable;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 158
    .local v4, "invalid":Ljava/util/Vector;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 159
    .local v5, "validSent":Ljava/util/Vector;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 161
    .local v6, "validUnsent":Ljava/util/Vector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v2

    if-lt v7, v8, :cond_13

    .line 174
    .end local v7    # "i":I
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v7

    .line 175
    .local v7, "dsize":I
    if-eqz v7, :cond_12

    .line 178
    iget-object v0, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    goto :goto_1

    .line 179
    :cond_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0, v8}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    .line 178
    :goto_1
    move-object v9, v0

    .line 185
    .local v9, "s":Ljavax/mail/Session;
    const/4 v10, 0x0

    const/4 v0, 0x1

    if-ne v7, v0, :cond_1

    .line 186
    aget-object v0, v2, v10

    invoke-virtual {v9, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v8

    .line 188
    .local v8, "transport":Ljavax/mail/Transport;
    :try_start_0
    invoke-virtual {v8}, Ljavax/mail/Transport;->connect()V

    .line 189
    invoke-virtual {v8, v1, v2}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {v8}, Ljavax/mail/Transport;->close()V

    .line 193
    return-void

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    invoke-virtual {v8}, Ljavax/mail/Transport;->close()V

    .line 192
    throw v0

    .line 200
    .end local v8    # "transport":Ljavax/mail/Transport;
    :cond_1
    const/4 v0, 0x0

    .line 201
    .local v0, "chainedEx":Ljavax/mail/MessagingException;
    const/4 v11, 0x0

    .line 203
    .local v11, "sendFailed":Z
    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v12

    .line 204
    .local v12, "e":Ljava/util/Enumeration;
    move/from16 v19, v11

    move-object v11, v0

    .end local v0    # "chainedEx":Ljavax/mail/MessagingException;
    .local v11, "chainedEx":Ljavax/mail/MessagingException;
    .local v19, "sendFailed":Z
    :goto_2
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_7

    .line 258
    if-nez v19, :cond_3

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 277
    :cond_2
    return-void

    .line 259
    :cond_3
    :goto_3
    move-object v0, v8

    check-cast v0, [Ljavax/mail/Address;

    .local v0, "a":[Ljavax/mail/Address;
    move-object v10, v8

    check-cast v10, [Ljavax/mail/Address;

    .local v10, "b":[Ljavax/mail/Address;
    check-cast v8, [Ljavax/mail/Address;

    .line 262
    .local v8, "c":[Ljavax/mail/Address;
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 263
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v0, v13, [Ljavax/mail/Address;

    .line 264
    invoke-virtual {v5, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 266
    :cond_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 267
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v10, v13, [Ljavax/mail/Address;

    .line 268
    invoke-virtual {v6, v10}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 270
    :cond_5
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v13

    if-lez v13, :cond_6

    .line 271
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v8, v13, [Ljavax/mail/Address;

    .line 272
    invoke-virtual {v4, v8}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 274
    :cond_6
    new-instance v20, Ljavax/mail/SendFailedException;

    .line 275
    nop

    .line 274
    const-string v14, "Sending failed"

    move-object/from16 v13, v20

    move-object v15, v11

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v18}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v20

    .line 205
    .end local v0    # "a":[Ljavax/mail/Address;
    .end local v8    # "c":[Ljavax/mail/Address;
    .end local v10    # "b":[Ljavax/mail/Address;
    :cond_7
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/Vector;

    .line 206
    .local v13, "v":Ljava/util/Vector;
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v14, v0, [Ljavax/mail/Address;

    .line 207
    .local v14, "protaddresses":[Ljavax/mail/Address;
    invoke-virtual {v13, v14}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 210
    aget-object v0, v14, v10

    invoke-virtual {v9, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v0

    move-object v15, v0

    .local v15, "transport":Ljavax/mail/Transport;
    if-nez v0, :cond_9

    .line 213
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_4
    array-length v8, v14

    if-lt v0, v8, :cond_8

    .line 215
    .end local v0    # "j":I
    goto :goto_5

    .line 214
    .restart local v0    # "j":I
    :cond_8
    aget-object v8, v14, v0

    invoke-virtual {v4, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x0

    goto :goto_4

    .line 218
    .end local v0    # "j":I
    :cond_9
    :try_start_1
    invoke-virtual {v15}, Ljavax/mail/Transport;->connect()V

    .line 219
    invoke-virtual {v15, v1, v14}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_1
    .catch Ljavax/mail/SendFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    invoke-virtual {v15}, Ljavax/mail/Transport;->close()V

    .line 204
    .end local v13    # "v":Ljava/util/Vector;
    .end local v14    # "protaddresses":[Ljavax/mail/Address;
    .end local v15    # "transport":Ljavax/mail/Transport;
    :goto_5
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 252
    .restart local v13    # "v":Ljava/util/Vector;
    .restart local v14    # "protaddresses":[Ljavax/mail/Address;
    .restart local v15    # "transport":Ljavax/mail/Transport;
    :catchall_1
    move-exception v0

    goto/16 :goto_e

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "mex":Ljavax/mail/MessagingException;
    const/16 v19, 0x1

    .line 248
    if-nez v11, :cond_a

    .line 249
    move-object v8, v0

    move-object v11, v8

    .end local v11    # "chainedEx":Ljavax/mail/MessagingException;
    .local v8, "chainedEx":Ljavax/mail/MessagingException;
    goto :goto_6

    .line 251
    .end local v8    # "chainedEx":Ljavax/mail/MessagingException;
    .restart local v11    # "chainedEx":Ljavax/mail/MessagingException;
    :cond_a
    :try_start_2
    invoke-virtual {v11, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    .end local v0    # "mex":Ljavax/mail/MessagingException;
    :goto_6
    invoke-virtual {v15}, Ljavax/mail/Transport;->close()V

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 220
    :catch_1
    move-exception v0

    .line 221
    .local v0, "sex":Ljavax/mail/SendFailedException;
    const/16 v19, 0x1

    .line 223
    if-nez v11, :cond_b

    .line 224
    move-object v8, v0

    move-object v11, v8

    .end local v11    # "chainedEx":Ljavax/mail/MessagingException;
    .restart local v8    # "chainedEx":Ljavax/mail/MessagingException;
    goto :goto_7

    .line 226
    .end local v8    # "chainedEx":Ljavax/mail/MessagingException;
    .restart local v11    # "chainedEx":Ljavax/mail/MessagingException;
    :cond_b
    :try_start_3
    invoke-virtual {v11, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 229
    :goto_7
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v8

    .line 230
    .local v8, "a":[Ljavax/mail/Address;
    if-eqz v8, :cond_d

    .line 231
    const/16 v17, 0x0

    move/from16 v10, v17

    .local v10, "j":I
    :goto_8
    array-length v1, v8

    if-lt v10, v1, :cond_c

    goto :goto_9

    .line 232
    :cond_c
    aget-object v1, v8, v10

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 231
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_8

    .line 235
    .end local v10    # "j":I
    :cond_d
    :goto_9
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v1

    .line 236
    .end local v8    # "a":[Ljavax/mail/Address;
    .local v1, "a":[Ljavax/mail/Address;
    if-eqz v1, :cond_f

    .line 237
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_a
    array-length v10, v1

    if-lt v8, v10, :cond_e

    goto :goto_b

    .line 238
    :cond_e
    aget-object v10, v1, v8

    invoke-virtual {v5, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 241
    .end local v8    # "k":I
    :cond_f
    :goto_b
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidUnsentAddresses()[Ljavax/mail/Address;

    move-result-object v8

    .line 242
    .local v8, "c":[Ljavax/mail/Address;
    if-eqz v8, :cond_11

    .line 243
    const/4 v10, 0x0

    .local v10, "l":I
    :goto_c
    move-object/from16 v17, v0

    .end local v0    # "sex":Ljavax/mail/SendFailedException;
    .local v17, "sex":Ljavax/mail/SendFailedException;
    array-length v0, v8

    if-lt v10, v0, :cond_10

    goto :goto_d

    .line 244
    :cond_10
    aget-object v0, v8, v10

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 243
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v17

    goto :goto_c

    .line 242
    .end local v10    # "l":I
    .end local v17    # "sex":Ljavax/mail/SendFailedException;
    .restart local v0    # "sex":Ljavax/mail/SendFailedException;
    :cond_11
    move-object/from16 v17, v0

    .line 253
    .end local v0    # "sex":Ljavax/mail/SendFailedException;
    .end local v1    # "a":[Ljavax/mail/Address;
    .end local v8    # "c":[Ljavax/mail/Address;
    :goto_d
    invoke-virtual {v15}, Ljavax/mail/Transport;->close()V

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_2

    :goto_e
    invoke-virtual {v15}, Ljavax/mail/Transport;->close()V

    .line 254
    throw v0

    .line 176
    .end local v9    # "s":Ljavax/mail/Session;
    .end local v11    # "chainedEx":Ljavax/mail/MessagingException;
    .end local v12    # "e":Ljava/util/Enumeration;
    .end local v13    # "v":Ljava/util/Vector;
    .end local v14    # "protaddresses":[Ljavax/mail/Address;
    .end local v15    # "transport":Ljavax/mail/Transport;
    .end local v19    # "sendFailed":Z
    :cond_12
    new-instance v1, Ljavax/mail/SendFailedException;

    invoke-direct {v1, v0}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    .local v7, "i":I
    :cond_13
    aget-object v1, v2, v7

    invoke-virtual {v1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 164
    aget-object v1, v2, v7

    invoke-virtual {v1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 165
    .local v1, "v":Ljava/util/Vector;
    aget-object v8, v2, v7

    invoke-virtual {v1, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_f

    .line 168
    .end local v1    # "v":Ljava/util/Vector;
    :cond_14
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 169
    .local v1, "w":Ljava/util/Vector;
    aget-object v8, v2, v7

    invoke-virtual {v1, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 170
    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v1    # "w":Ljava/util/Vector;
    :goto_f
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 148
    .end local v3    # "protocols":Ljava/util/Hashtable;
    .end local v4    # "invalid":Ljava/util/Vector;
    .end local v5    # "validSent":Ljava/util/Vector;
    .end local v6    # "validUnsent":Ljava/util/Vector;
    .end local v7    # "i":I
    :cond_15
    new-instance v1, Ljavax/mail/SendFailedException;

    invoke-direct {v1, v0}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized addTransportListener(Ljavax/mail/event/TransportListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/TransportListener;

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 317
    .end local p0    # "this":Ljavax/mail/Transport;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 314
    .end local p1    # "l":Ljavax/mail/event/TransportListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "validSent"    # [Ljavax/mail/Address;
    .param p3, "validUnsent"    # [Ljavax/mail/Address;
    .param p4, "invalid"    # [Ljavax/mail/Address;
    .param p5, "msg"    # Ljavax/mail/Message;

    .line 347
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 348
    return-void

    .line 350
    :cond_0
    new-instance v0, Ljavax/mail/event/TransportEvent;

    .line 351
    nop

    .line 350
    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ljavax/mail/event/TransportEvent;-><init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 352
    .local v0, "e":Ljavax/mail/event/TransportEvent;
    iget-object v1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Transport;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 353
    return-void
.end method

.method public declared-synchronized removeTransportListener(Ljavax/mail/event/TransportListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/TransportListener;

    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .end local p0    # "this":Ljavax/mail/Transport;
    :cond_0
    monitor-exit p0

    return-void

    .line 329
    .end local p1    # "l":Ljavax/mail/event/TransportListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
