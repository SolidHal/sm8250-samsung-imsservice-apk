.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# static fields
.field private static bmparse:Z

.field private static ignoreMissingBoundaryParameter:Z

.field private static ignoreMissingEndBoundary:Z


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 103
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 104
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    .line 109
    :try_start_0
    const-string v1, "mail.mime.multipart.ignoremissingendboundary"

    .line 108
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "false"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v0

    .line 111
    :goto_0
    sput-boolean v4, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 114
    const-string v4, "mail.mime.multipart.ignoremissingboundaryparameter"

    .line 113
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 117
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v0

    .line 116
    :goto_1
    sput-boolean v4, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 119
    const-string v4, "mail.mime.multipart.bmparse"

    .line 118
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 121
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    :cond_2
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->bmparse:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 122
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 161
    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "subtype"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "boundary":Ljava/lang/String;
    new-instance v2, Ljavax/mail/internet/ContentType;

    const-string v3, "multipart"

    invoke-direct {v2, v3, p1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    move-object v0, v2

    .line 179
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const-string v2, "boundary"

    invoke-virtual {v0, v2, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 2
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 204
    instance-of v0, p1, Ljavax/mail/MessageAware;

    if-eqz v0, :cond_0

    .line 205
    move-object v0, p1

    check-cast v0, Ljavax/mail/MessageAware;

    invoke-interface {v0}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 206
    .local v0, "mc":Ljavax/mail/MessageContext;
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 209
    .end local v0    # "mc":Ljavax/mail/MessageContext;
    :cond_0
    instance-of v0, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v0, :cond_1

    .line 211
    move-object v0, p1

    check-cast v0, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    .line 212
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 218
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 219
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 220
    return-void
.end method

.method private declared-synchronized parsebm()V
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 718
    :try_start_0
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    if-eqz v0, :cond_0

    .line 719
    monitor-exit p0

    return-void

    .line 721
    :cond_0
    const/4 v2, 0x0

    .line 722
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 723
    .local v3, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v4, 0x0

    .local v4, "start":J
    const-wide/16 v6, 0x0

    .line 726
    .local v6, "end":J
    :try_start_1
    iget-object v0, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    .line 727
    instance-of v0, v2, Ljava/io/ByteArrayInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    if-nez v0, :cond_1

    .line 728
    :try_start_2
    instance-of v0, v2, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    .line 729
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_1

    .line 730
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    move-object v2, v0

    goto :goto_0

    .line 731
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catch_0
    move-exception v0

    move-wide/from16 v17, v4

    move-wide/from16 v20, v6

    goto/16 :goto_29

    .line 734
    :cond_1
    :goto_0
    :try_start_3
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_2

    .line 735
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v3, v0

    .line 737
    :cond_2
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v8, v1, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 738
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    const/4 v0, 0x0

    .line 739
    .local v0, "boundary":Ljava/lang/String;
    const-string v9, "boundary"

    invoke-virtual {v8, v9}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 740
    .local v9, "bp":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 741
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "--"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 742
    :cond_3
    sget-boolean v10, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_12

    if-eqz v10, :cond_35

    move-object v10, v0

    .line 747
    .end local v0    # "boundary":Ljava/lang/String;
    .local v10, "boundary":Ljava/lang/String;
    :goto_1
    :try_start_4
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v0

    .line 748
    .local v11, "lin":Lcom/sun/mail/util/LineInputStream;
    const/4 v0, 0x0

    .line 750
    .local v0, "preamblesb":Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 751
    .local v12, "lineSeparator":Ljava/lang/String;
    move-object v13, v12

    move-object v12, v0

    .end local v0    # "preamblesb":Ljava/lang/StringBuffer;
    .local v12, "preamblesb":Ljava/lang/StringBuffer;
    .local v13, "lineSeparator":Ljava/lang/String;
    :goto_2
    invoke-virtual {v11}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .local v14, "line":Ljava/lang/String;
    const/4 v15, 0x1

    if-nez v0, :cond_4

    move-wide/from16 v17, v4

    goto :goto_5

    .line 759
    :cond_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v15

    move v15, v0

    .local v15, "i":I
    :goto_3
    if-gez v15, :cond_5

    move-wide/from16 v17, v4

    goto :goto_4

    .line 760
    :cond_5
    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    .line 761
    .local v0, "c":C
    move-wide/from16 v17, v4

    const/16 v4, 0x20

    .end local v4    # "start":J
    .local v17, "start":J
    if-eq v0, v4, :cond_34

    const/16 v4, 0x9

    if-eq v0, v4, :cond_34

    .line 762
    nop

    .line 764
    .end local v0    # "c":C
    :goto_4
    add-int/lit8 v0, v15, 0x1

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    move-object v14, v0

    .line 765
    if-eqz v10, :cond_7

    .line 766
    :try_start_6
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_6

    .line 767
    goto :goto_5

    .line 766
    :cond_6
    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v29, v13

    goto/16 :goto_23

    .line 774
    :cond_7
    :try_start_7
    const-string v0, "--"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_f

    if-eqz v0, :cond_30

    .line 775
    move-object v10, v14

    .line 776
    nop

    .line 798
    .end local v15    # "i":I
    :goto_5
    if-eqz v14, :cond_2f

    .line 801
    if-eqz v12, :cond_8

    .line 802
    :try_start_8
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 1025
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v4, v17

    move-object v8, v0

    goto/16 :goto_27

    .line 1023
    :catch_1
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v4, v17

    goto/16 :goto_26

    .line 805
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_8
    :goto_6
    :try_start_9
    invoke-static {v10}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 806
    .local v0, "bndbytes":[B
    array-length v4, v0

    .line 813
    .local v4, "bl":I
    const/16 v5, 0x100

    new-array v5, v5, [I

    .line 814
    .local v5, "bcs":[I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_7
    if-lt v15, v4, :cond_2e

    .line 818
    .end local v15    # "i":I
    new-array v15, v4, [I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    .line 820
    .local v15, "gss":[I
    move/from16 v19, v4

    move-wide/from16 v20, v6

    move/from16 v6, v19

    .local v6, "i":I
    .local v20, "end":J
    :goto_8
    if-gtz v6, :cond_2a

    .line 836
    .end local v6    # "i":I
    add-int/lit8 v6, v4, -0x1

    const/4 v7, 0x1

    :try_start_a
    aput v7, v15, v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 842
    const/4 v6, 0x0

    .line 844
    .local v6, "done":Z
    nop

    :goto_9
    if-eqz v6, :cond_9

    goto :goto_b

    .line 845
    :cond_9
    const/4 v7, 0x0

    .line 846
    .local v7, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v3, :cond_e

    .line 847
    :try_start_b
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v22

    move-wide/from16 v17, v22

    .line 849
    :cond_a
    invoke-virtual {v11}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v19
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v14, v19

    if-eqz v19, :cond_b

    :try_start_c
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-gtz v19, :cond_a

    goto :goto_a

    .line 1025
    .end local v0    # "bndbytes":[B
    .end local v4    # "bl":I
    .end local v5    # "bcs":[I
    .end local v6    # "done":Z
    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "gss":[I
    :catchall_1
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    move-object v8, v0

    goto/16 :goto_27

    .line 1023
    :catch_2
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    goto/16 :goto_26

    .line 851
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "bl":I
    .restart local v5    # "bcs":[I
    .restart local v6    # "done":Z
    .restart local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "gss":[I
    :cond_b
    :goto_a
    if-nez v14, :cond_d

    .line 852
    :try_start_d
    sget-boolean v16, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v16, :cond_c

    .line 856
    move/from16 v19, v6

    const/4 v6, 0x0

    .end local v6    # "done":Z
    .local v19, "done":Z
    :try_start_e
    iput-boolean v6, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 857
    nop

    .line 1027
    .end local v0    # "bndbytes":[B
    .end local v4    # "bl":I
    .end local v5    # "bcs":[I
    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "gss":[I
    .end local v19    # "done":Z
    :goto_b
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_12

    goto :goto_c

    .line 1028
    :catch_3
    move-exception v0

    .line 1033
    :goto_c
    const/4 v4, 0x1

    :try_start_10
    iput-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_12

    .line 1034
    monitor-exit p0

    return-void

    .line 853
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "bl":I
    .restart local v5    # "bcs":[I
    .restart local v6    # "done":Z
    .restart local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "gss":[I
    :cond_c
    move/from16 v19, v6

    .end local v6    # "done":Z
    .restart local v19    # "done":Z
    :try_start_11
    new-instance v6, Ljavax/mail/MessagingException;

    .line 854
    move-object/from16 v22, v7

    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .local v22, "headers":Ljavax/mail/internet/InternetHeaders;
    const-string v7, "missing multipart end boundary"

    .line 853
    invoke-direct {v6, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v17    # "start":J
    .end local v20    # "end":J
    throw v6
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 851
    .end local v19    # "done":Z
    .end local v22    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v6    # "done":Z
    .restart local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    .restart local v17    # "start":J
    .restart local v20    # "end":J
    .restart local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :cond_d
    move/from16 v19, v6

    move-object/from16 v22, v7

    .end local v6    # "done":Z
    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v19    # "done":Z
    .restart local v22    # "headers":Ljavax/mail/internet/InternetHeaders;
    move-object/from16 v23, v9

    move-object/from16 v22, v8

    move-wide/from16 v8, v17

    goto :goto_d

    .line 1025
    .end local v0    # "bndbytes":[B
    .end local v4    # "bl":I
    .end local v5    # "bcs":[I
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "gss":[I
    .end local v19    # "done":Z
    .end local v22    # "headers":Ljavax/mail/internet/InternetHeaders;
    :catchall_2
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    move-object v8, v0

    goto/16 :goto_27

    .line 1023
    :catch_4
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    goto/16 :goto_26

    .line 861
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "bl":I
    .restart local v5    # "bcs":[I
    .restart local v6    # "done":Z
    .restart local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "gss":[I
    :cond_e
    move/from16 v19, v6

    move-object/from16 v22, v7

    .end local v6    # "done":Z
    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v19    # "done":Z
    .restart local v22    # "headers":Ljavax/mail/internet/InternetHeaders;
    :try_start_12
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v6
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    move-object v7, v6

    .end local v22    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v8, v17

    .line 864
    .end local v9    # "bp":Ljava/lang/String;
    .end local v17    # "start":J
    .local v8, "start":J
    .local v22, "cType":Ljavax/mail/internet/ContentType;
    .local v23, "bp":Ljava/lang/String;
    :goto_d
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v6
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    if-eqz v6, :cond_29

    .line 867
    const/4 v6, 0x0

    .line 869
    .local v6, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v3, :cond_f

    .line 870
    :try_start_14
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-object/from16 v6, v17

    move-wide/from16 v17, v20

    goto :goto_e

    .line 1025
    .end local v0    # "bndbytes":[B
    .end local v4    # "bl":I
    .end local v5    # "bcs":[I
    .end local v6    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "gss":[I
    .end local v19    # "done":Z
    :catchall_3
    move-exception v0

    move-wide v4, v8

    move-wide/from16 v6, v20

    move-object v8, v0

    goto/16 :goto_27

    .line 1023
    :catch_5
    move-exception v0

    move-wide v4, v8

    move-wide/from16 v6, v20

    goto/16 :goto_26

    .line 872
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "bl":I
    .restart local v5    # "bcs":[I
    .restart local v6    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "gss":[I
    .restart local v19    # "done":Z
    :cond_f
    :try_start_15
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 884
    .end local v20    # "end":J
    .local v17, "end":J
    :goto_e
    move-object/from16 v24, v10

    .end local v10    # "boundary":Ljava/lang/String;
    .local v24, "boundary":Ljava/lang/String;
    :try_start_16
    new-array v10, v4, [B

    .line 885
    .local v10, "inbuf":[B
    move-object/from16 v20, v10

    .end local v10    # "inbuf":[B
    .local v20, "inbuf":[B
    new-array v10, v4, [B

    .line 886
    .local v10, "previnbuf":[B
    const/16 v21, 0x0

    .line 887
    .local v21, "inSize":I
    const/16 v25, 0x0

    .line 889
    .local v25, "prevSize":I
    const/16 v26, 0x1

    move-object/from16 v36, v11

    move-object v11, v10

    move-object/from16 v10, v20

    move/from16 v20, v26

    move-object/from16 v26, v14

    move/from16 v14, v25

    move-object/from16 v25, v36

    .line 895
    .local v10, "inbuf":[B
    .local v11, "previnbuf":[B
    .local v14, "prevSize":I
    .local v20, "first":Z
    .local v25, "lin":Lcom/sun/mail/util/LineInputStream;
    .local v26, "line":Ljava/lang/String;
    :goto_f
    move-object/from16 v27, v12

    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .local v27, "preamblesb":Ljava/lang/StringBuffer;
    add-int/lit8 v12, v4, 0x4

    add-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v2, v12}, Ljava/io/InputStream;->mark(I)V

    .line 896
    const/4 v12, 0x0

    .line 897
    .local v12, "eolLen":I
    move/from16 v28, v12

    const/4 v12, 0x0

    .end local v12    # "eolLen":I
    .local v28, "eolLen":I
    invoke-static {v2, v10, v12, v4}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v29
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    move/from16 v12, v29

    .line 898
    .end local v21    # "inSize":I
    .local v12, "inSize":I
    if-ge v12, v4, :cond_12

    .line 900
    :try_start_17
    sget-boolean v21, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v21, :cond_11

    .line 903
    if-eqz v3, :cond_10

    .line 904
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v29

    move-wide/from16 v17, v29

    .line 905
    :cond_10
    move-object/from16 v29, v13

    const/4 v13, 0x0

    .end local v13    # "lineSeparator":Ljava/lang/String;
    .local v29, "lineSeparator":Ljava/lang/String;
    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 906
    const/4 v13, 0x1

    .line 907
    .end local v19    # "done":Z
    .local v13, "done":Z
    move/from16 v35, v4

    move-object/from16 v31, v5

    move/from16 v21, v12

    move/from16 v19, v13

    move-object/from16 v30, v15

    move-wide/from16 v4, v17

    move/from16 v12, v28

    goto/16 :goto_18

    .line 901
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .local v13, "lineSeparator":Ljava/lang/String;
    .restart local v19    # "done":Z
    :cond_11
    move-object/from16 v29, v13

    .end local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    new-instance v13, Ljavax/mail/MessagingException;

    .line 902
    move-object/from16 v30, v15

    .end local v15    # "gss":[I
    .local v30, "gss":[I
    const-string v15, "missing multipart end boundary"

    .line 901
    invoke-direct {v13, v15}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v8    # "start":J
    .end local v17    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v24    # "boundary":Ljava/lang/String;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    throw v13
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 1025
    .end local v0    # "bndbytes":[B
    .end local v4    # "bl":I
    .end local v5    # "bcs":[I
    .end local v6    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v10    # "inbuf":[B
    .end local v11    # "previnbuf":[B
    .end local v12    # "inSize":I
    .end local v14    # "prevSize":I
    .end local v19    # "done":Z
    .end local v20    # "first":Z
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v26    # "line":Ljava/lang/String;
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v28    # "eolLen":I
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v30    # "gss":[I
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v8    # "start":J
    .restart local v17    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    .restart local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_4
    move-exception v0

    move-wide v4, v8

    move-wide/from16 v6, v17

    move-object/from16 v10, v24

    move-object v8, v0

    goto/16 :goto_27

    .line 1023
    :catch_6
    move-exception v0

    move-wide v4, v8

    move-wide/from16 v6, v17

    move-object/from16 v10, v24

    goto/16 :goto_26

    .line 911
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "bl":I
    .restart local v5    # "bcs":[I
    .restart local v6    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v10    # "inbuf":[B
    .restart local v11    # "previnbuf":[B
    .restart local v12    # "inSize":I
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "prevSize":I
    .restart local v15    # "gss":[I
    .restart local v19    # "done":Z
    .restart local v20    # "first":Z
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v26    # "line":Ljava/lang/String;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v28    # "eolLen":I
    :cond_12
    move-object/from16 v29, v13

    move-object/from16 v30, v15

    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v15    # "gss":[I
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v30    # "gss":[I
    add-int/lit8 v13, v4, -0x1

    .local v13, "i":I
    :goto_10
    if-gez v13, :cond_13

    move-object/from16 v31, v5

    goto :goto_11

    .line 912
    :cond_13
    :try_start_18
    aget-byte v15, v10, v13

    move-object/from16 v31, v5

    .end local v5    # "bcs":[I
    .local v31, "bcs":[I
    aget-byte v5, v0, v13
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-eq v15, v5, :cond_28

    .line 913
    nop

    .line 915
    :goto_11
    if-gez v13, :cond_23

    .line 916
    const/4 v5, 0x0

    .line 917
    .end local v28    # "eolLen":I
    .local v5, "eolLen":I
    if-nez v20, :cond_15

    .line 920
    add-int/lit8 v28, v14, -0x1

    :try_start_19
    aget-byte v28, v11, v28

    move/from16 v32, v28

    .line 921
    .local v32, "b":I
    move/from16 v15, v32

    move/from16 v32, v5

    const/16 v5, 0xd

    .end local v5    # "eolLen":I
    .local v15, "b":I
    .local v32, "eolLen":I
    if-eq v15, v5, :cond_14

    const/16 v5, 0xa

    if-ne v15, v5, :cond_16

    goto :goto_12

    :cond_14
    const/16 v5, 0xa

    .line 922
    :goto_12
    const/16 v32, 0x1

    .line 923
    if-ne v15, v5, :cond_16

    const/4 v5, 0x2

    if-lt v14, v5, :cond_16

    .line 924
    add-int/lit8 v5, v14, -0x2

    aget-byte v5, v11, v5

    .line 925
    .end local v15    # "b":I
    .local v5, "b":I
    const/16 v15, 0xd

    if-ne v5, v15, :cond_16

    .line 926
    const/4 v15, 0x2

    .end local v32    # "eolLen":I
    .local v15, "eolLen":I
    goto :goto_13

    .line 917
    .end local v15    # "eolLen":I
    .local v5, "eolLen":I
    :cond_15
    move/from16 v32, v5

    .line 930
    .end local v5    # "eolLen":I
    .restart local v32    # "eolLen":I
    :cond_16
    move/from16 v15, v32

    .end local v32    # "eolLen":I
    .restart local v15    # "eolLen":I
    :goto_13
    if-nez v20, :cond_18

    if-lez v15, :cond_17

    goto :goto_14

    :cond_17
    move/from16 v35, v4

    move/from16 v34, v13

    move v13, v12

    goto/16 :goto_1b

    .line 931
    :cond_18
    :goto_14
    if-eqz v3, :cond_19

    .line 934
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v32
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move v5, v12

    move/from16 v34, v13

    .end local v12    # "inSize":I
    .end local v13    # "i":I
    .local v5, "inSize":I
    .local v34, "i":I
    int-to-long v12, v4

    sub-long v32, v32, v12

    int-to-long v12, v15

    sub-long v32, v32, v12

    .end local v17    # "end":J
    .local v32, "end":J
    goto :goto_15

    .line 931
    .end local v5    # "inSize":I
    .end local v32    # "end":J
    .end local v34    # "i":I
    .restart local v12    # "inSize":I
    .restart local v13    # "i":I
    .restart local v17    # "end":J
    :cond_19
    move v5, v12

    move/from16 v34, v13

    .end local v12    # "inSize":I
    .end local v13    # "i":I
    .restart local v5    # "inSize":I
    .restart local v34    # "i":I
    move-wide/from16 v32, v17

    .line 937
    .end local v17    # "end":J
    .restart local v32    # "end":J
    :goto_15
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 938
    .local v12, "b2":I
    const/16 v13, 0x2d

    if-ne v12, v13, :cond_1a

    .line 939
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v13

    move/from16 v18, v12

    const/16 v12, 0x2d

    .end local v12    # "b2":I
    .local v18, "b2":I
    if-ne v13, v12, :cond_1b

    .line 940
    const/4 v12, 0x1

    iput-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 941
    const/4 v12, 0x1

    .line 942
    .end local v19    # "done":Z
    .local v12, "done":Z
    move/from16 v35, v4

    move/from16 v21, v5

    move/from16 v19, v12

    move v12, v15

    move-wide/from16 v4, v32

    goto :goto_18

    .line 938
    .end local v18    # "b2":I
    .local v12, "b2":I
    .restart local v19    # "done":Z
    :cond_1a
    move/from16 v18, v12

    .line 946
    .end local v12    # "b2":I
    .restart local v18    # "b2":I
    :cond_1b
    move/from16 v12, v18

    .end local v18    # "b2":I
    .restart local v12    # "b2":I
    :goto_16
    const/16 v13, 0x20

    if-eq v12, v13, :cond_22

    const/16 v13, 0x9

    if-eq v12, v13, :cond_22

    .line 949
    const/16 v13, 0xa

    if-ne v12, v13, :cond_1c

    .line 950
    goto :goto_17

    .line 951
    :cond_1c
    const/16 v13, 0xd

    if-ne v12, v13, :cond_21

    .line 952
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/io/InputStream;->mark(I)V

    .line 953
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v13

    move/from16 v17, v12

    const/16 v12, 0xa

    .end local v12    # "b2":I
    .local v17, "b2":I
    if-eq v13, v12, :cond_1d

    .line 954
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 1009
    .end local v17    # "b2":I
    .end local v34    # "i":I
    :cond_1d
    :goto_17
    move/from16 v35, v4

    move/from16 v21, v5

    move v12, v15

    move-wide/from16 v4, v32

    .end local v5    # "inSize":I
    .end local v15    # "eolLen":I
    .end local v32    # "end":J
    .local v4, "end":J
    .local v12, "eolLen":I
    .restart local v21    # "inSize":I
    .local v35, "bl":I
    :goto_18
    if-eqz v3, :cond_1e

    .line 1010
    :try_start_1b
    invoke-interface {v3, v8, v9, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v13

    move-object v15, v13

    move/from16 v13, v21

    .local v13, "part":Ljavax/mail/internet/MimeBodyPart;
    goto :goto_1a

    .line 1025
    .end local v0    # "bndbytes":[B
    .end local v6    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v10    # "inbuf":[B
    .end local v11    # "previnbuf":[B
    .end local v12    # "eolLen":I
    .end local v13    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v14    # "prevSize":I
    .end local v19    # "done":Z
    .end local v20    # "first":Z
    .end local v21    # "inSize":I
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v26    # "line":Ljava/lang/String;
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v35    # "bl":I
    :catchall_5
    move-exception v0

    move-wide v6, v4

    move-wide v4, v8

    move-object/from16 v10, v24

    move-object v8, v0

    goto/16 :goto_27

    .line 1023
    :catch_7
    move-exception v0

    move-wide v6, v4

    move-wide v4, v8

    move-object/from16 v10, v24

    goto/16 :goto_26

    .line 1013
    .restart local v0    # "bndbytes":[B
    .restart local v6    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v10    # "inbuf":[B
    .restart local v11    # "previnbuf":[B
    .restart local v12    # "eolLen":I
    .restart local v14    # "prevSize":I
    .restart local v19    # "done":Z
    .restart local v20    # "first":Z
    .restart local v21    # "inSize":I
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v26    # "line":Ljava/lang/String;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v30    # "gss":[I
    .restart local v31    # "bcs":[I
    .restart local v35    # "bl":I
    :cond_1e
    sub-int v13, v14, v12

    if-lez v13, :cond_1f

    .line 1014
    sub-int v13, v14, v12

    const/4 v15, 0x0

    invoke-virtual {v6, v11, v15, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1017
    :cond_1f
    iget-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v13, :cond_20

    if-lez v21, :cond_20

    .line 1018
    move/from16 v13, v21

    const/4 v15, 0x0

    .end local v21    # "inSize":I
    .local v13, "inSize":I
    invoke-virtual {v6, v10, v15, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_19

    .line 1017
    .end local v13    # "inSize":I
    .restart local v21    # "inSize":I
    :cond_20
    move/from16 v13, v21

    .line 1019
    .end local v21    # "inSize":I
    .restart local v13    # "inSize":I
    :goto_19
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v1, v7, v15}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v15

    .line 1021
    .local v15, "part":Ljavax/mail/internet/MimeBodyPart;
    :goto_1a
    invoke-super {v1, v15}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_7
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    move-wide/from16 v20, v4

    move-wide/from16 v17, v8

    move/from16 v6, v19

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v14, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v29

    move-object/from16 v15, v30

    move-object/from16 v5, v31

    move/from16 v4, v35

    goto/16 :goto_9

    .line 951
    .end local v13    # "inSize":I
    .end local v35    # "bl":I
    .local v4, "bl":I
    .restart local v5    # "inSize":I
    .local v12, "b2":I
    .local v15, "eolLen":I
    .restart local v32    # "end":J
    .restart local v34    # "i":I
    :cond_21
    move/from16 v35, v4

    move v13, v5

    move/from16 v17, v12

    .end local v4    # "bl":I
    .end local v5    # "inSize":I
    .end local v12    # "b2":I
    .restart local v13    # "inSize":I
    .restart local v17    # "b2":I
    .restart local v35    # "bl":I
    move-wide/from16 v17, v32

    .line 958
    .end local v32    # "end":J
    .local v17, "end":J
    :goto_1b
    const/4 v4, 0x0

    move v12, v15

    move/from16 v36, v13

    move v13, v4

    move/from16 v4, v36

    .end local v34    # "i":I
    .local v4, "i":I
    goto :goto_1c

    .line 946
    .end local v13    # "inSize":I
    .end local v17    # "end":J
    .end local v35    # "bl":I
    .local v4, "bl":I
    .restart local v5    # "inSize":I
    .restart local v12    # "b2":I
    .restart local v32    # "end":J
    .restart local v34    # "i":I
    :cond_22
    move/from16 v35, v4

    move v4, v5

    move/from16 v17, v12

    const/16 v12, 0xa

    const/16 v13, 0xd

    .line 947
    .end local v5    # "inSize":I
    .end local v12    # "b2":I
    .local v4, "inSize":I
    .local v17, "b2":I
    .restart local v35    # "bl":I
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v5
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    move v12, v5

    move v5, v4

    move/from16 v4, v35

    .end local v17    # "b2":I
    .local v5, "b2":I
    goto/16 :goto_16

    .line 1025
    .end local v0    # "bndbytes":[B
    .end local v4    # "inSize":I
    .end local v5    # "b2":I
    .end local v6    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v10    # "inbuf":[B
    .end local v11    # "previnbuf":[B
    .end local v14    # "prevSize":I
    .end local v15    # "eolLen":I
    .end local v19    # "done":Z
    .end local v20    # "first":Z
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v26    # "line":Ljava/lang/String;
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v34    # "i":I
    .end local v35    # "bl":I
    :catchall_6
    move-exception v0

    move-wide v4, v8

    move-object/from16 v10, v24

    move-wide/from16 v6, v32

    move-object v8, v0

    goto/16 :goto_27

    .line 1023
    :catch_8
    move-exception v0

    move-wide v4, v8

    move-object/from16 v10, v24

    move-wide/from16 v6, v32

    goto/16 :goto_26

    .line 915
    .end local v32    # "end":J
    .restart local v0    # "bndbytes":[B
    .local v4, "bl":I
    .restart local v6    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v10    # "inbuf":[B
    .restart local v11    # "previnbuf":[B
    .local v12, "inSize":I
    .local v13, "i":I
    .restart local v14    # "prevSize":I
    .local v17, "end":J
    .restart local v19    # "done":Z
    .restart local v20    # "first":Z
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v26    # "line":Ljava/lang/String;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v28    # "eolLen":I
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v30    # "gss":[I
    .restart local v31    # "bcs":[I
    :cond_23
    move/from16 v35, v4

    move v4, v12

    move/from16 v34, v13

    .end local v12    # "inSize":I
    .end local v13    # "i":I
    .local v4, "inSize":I
    .restart local v34    # "i":I
    .restart local v35    # "bl":I
    move/from16 v12, v28

    .line 968
    .end local v28    # "eolLen":I
    .end local v34    # "i":I
    .local v12, "eolLen":I
    .restart local v13    # "i":I
    :goto_1c
    add-int/lit8 v5, v13, 0x1

    :try_start_1d
    aget-byte v15, v10, v13

    and-int/lit8 v15, v15, 0x7f

    aget v15, v31, v15

    sub-int/2addr v5, v15

    aget v15, v30, v13

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 970
    .local v5, "skip":I
    const/4 v15, 0x2

    if-ge v5, v15, :cond_26

    .line 974
    if-nez v3, :cond_24

    const/4 v15, 0x1

    if-le v14, v15, :cond_24

    .line 975
    add-int/lit8 v15, v14, -0x1

    move/from16 v21, v4

    const/4 v4, 0x0

    .end local v4    # "inSize":I
    .restart local v21    # "inSize":I
    :try_start_1e
    invoke-virtual {v6, v11, v4, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto :goto_1d

    .line 974
    .end local v21    # "inSize":I
    .restart local v4    # "inSize":I
    :cond_24
    move/from16 v21, v4

    .line 976
    .end local v4    # "inSize":I
    .restart local v21    # "inSize":I
    :goto_1d
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 977
    move-object v4, v7

    move-wide/from16 v32, v8

    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v8    # "start":J
    .local v4, "headers":Ljavax/mail/internet/InternetHeaders;
    .local v32, "start":J
    const-wide/16 v7, 0x1

    :try_start_20
    invoke-direct {v1, v2, v7, v8}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    .line 978
    const/4 v7, 0x1

    if-lt v14, v7, :cond_25

    .line 980
    add-int/lit8 v7, v14, -0x1

    aget-byte v7, v11, v7

    const/4 v8, 0x0

    aput-byte v7, v11, v8

    .line 981
    aget-byte v7, v10, v8

    const/4 v8, 0x1

    aput-byte v7, v11, v8

    .line 982
    const/4 v7, 0x2

    move v14, v7

    const/4 v7, 0x0

    .end local v14    # "prevSize":I
    .local v7, "prevSize":I
    goto :goto_1f

    .line 985
    .end local v7    # "prevSize":I
    .restart local v14    # "prevSize":I
    :cond_25
    move v8, v7

    const/4 v7, 0x0

    aget-byte v9, v10, v7

    aput-byte v9, v11, v7

    .line 986
    const/4 v7, 0x1

    move v14, v7

    const/4 v7, 0x0

    .end local v14    # "prevSize":I
    .restart local v7    # "prevSize":I
    goto :goto_1f

    .line 991
    .end local v21    # "inSize":I
    .end local v32    # "start":J
    .local v4, "inSize":I
    .local v7, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v8    # "start":J
    .restart local v14    # "prevSize":I
    :cond_26
    move/from16 v21, v4

    move-object v4, v7

    move-wide/from16 v32, v8

    const/4 v8, 0x1

    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v8    # "start":J
    .local v4, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v21    # "inSize":I
    .restart local v32    # "start":J
    if-lez v14, :cond_27

    if-nez v3, :cond_27

    .line 992
    const/4 v7, 0x0

    invoke-virtual {v6, v11, v7, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1e

    .line 991
    :cond_27
    const/4 v7, 0x0

    .line 994
    :goto_1e
    move v9, v5

    .line 995
    .end local v14    # "prevSize":I
    .local v9, "prevSize":I
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 996
    int-to-long v14, v9

    invoke-direct {v1, v2, v14, v15}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 998
    move-object v14, v10

    .line 999
    .local v14, "tmp":[B
    move-object v10, v11

    .line 1000
    move-object v11, v14

    move v14, v9

    .line 1002
    .end local v9    # "prevSize":I
    .local v14, "prevSize":I
    :goto_1f
    const/16 v20, 0x0

    .line 894
    .end local v5    # "skip":I
    .end local v12    # "eolLen":I
    .end local v13    # "i":I
    move-object v7, v4

    move-object/from16 v12, v27

    move-object/from16 v13, v29

    move-object/from16 v15, v30

    move-object/from16 v5, v31

    move-wide/from16 v8, v32

    move/from16 v4, v35

    goto/16 :goto_f

    .line 1025
    .end local v0    # "bndbytes":[B
    .end local v4    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v6    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "inbuf":[B
    .end local v11    # "previnbuf":[B
    .end local v14    # "prevSize":I
    .end local v19    # "done":Z
    .end local v20    # "first":Z
    .end local v21    # "inSize":I
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v26    # "line":Ljava/lang/String;
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v35    # "bl":I
    :catchall_7
    move-exception v0

    move-object v8, v0

    move-wide/from16 v6, v17

    move-object/from16 v10, v24

    move-wide/from16 v4, v32

    goto/16 :goto_27

    .line 1023
    :catch_9
    move-exception v0

    move-wide/from16 v6, v17

    move-object/from16 v10, v24

    move-wide/from16 v4, v32

    goto/16 :goto_26

    .line 911
    .end local v32    # "start":J
    .restart local v0    # "bndbytes":[B
    .local v4, "bl":I
    .restart local v6    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v8    # "start":J
    .restart local v10    # "inbuf":[B
    .restart local v11    # "previnbuf":[B
    .local v12, "inSize":I
    .restart local v13    # "i":I
    .restart local v14    # "prevSize":I
    .restart local v19    # "done":Z
    .restart local v20    # "first":Z
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v26    # "line":Ljava/lang/String;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v28    # "eolLen":I
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v30    # "gss":[I
    .restart local v31    # "bcs":[I
    :cond_28
    move/from16 v35, v4

    move-object v4, v7

    move-wide/from16 v32, v8

    move/from16 v21, v12

    move/from16 v34, v13

    const/4 v7, 0x0

    const/4 v8, 0x1

    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v8    # "start":J
    .end local v12    # "inSize":I
    .end local v13    # "i":I
    .local v4, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v21    # "inSize":I
    .restart local v32    # "start":J
    .restart local v34    # "i":I
    .restart local v35    # "bl":I
    add-int/lit8 v13, v34, -0x1

    move-object v7, v4

    move-object/from16 v5, v31

    move-wide/from16 v8, v32

    move/from16 v4, v35

    .end local v34    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_10

    .line 1025
    .end local v0    # "bndbytes":[B
    .end local v4    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v6    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "inbuf":[B
    .end local v11    # "previnbuf":[B
    .end local v13    # "i":I
    .end local v14    # "prevSize":I
    .end local v19    # "done":Z
    .end local v20    # "first":Z
    .end local v21    # "inSize":I
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v26    # "line":Ljava/lang/String;
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v28    # "eolLen":I
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v32    # "start":J
    .end local v35    # "bl":I
    .restart local v8    # "start":J
    :catchall_8
    move-exception v0

    move-wide/from16 v32, v8

    move-object v8, v0

    move-wide/from16 v6, v17

    move-object/from16 v10, v24

    move-wide/from16 v4, v32

    .end local v8    # "start":J
    .restart local v32    # "start":J
    goto/16 :goto_27

    .line 1023
    .end local v32    # "start":J
    .restart local v8    # "start":J
    :catch_a
    move-exception v0

    move-wide/from16 v32, v8

    move-wide/from16 v6, v17

    move-object/from16 v10, v24

    move-wide/from16 v4, v32

    .end local v8    # "start":J
    .restart local v32    # "start":J
    goto/16 :goto_26

    .line 865
    .end local v17    # "end":J
    .end local v24    # "boundary":Ljava/lang/String;
    .end local v32    # "start":J
    .restart local v0    # "bndbytes":[B
    .local v4, "bl":I
    .local v5, "bcs":[I
    .restart local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v8    # "start":J
    .local v10, "boundary":Ljava/lang/String;
    .local v11, "lin":Lcom/sun/mail/util/LineInputStream;
    .local v12, "preamblesb":Ljava/lang/StringBuffer;
    .local v13, "lineSeparator":Ljava/lang/String;
    .local v14, "line":Ljava/lang/String;
    .local v15, "gss":[I
    .restart local v19    # "done":Z
    .local v20, "end":J
    :cond_29
    move/from16 v35, v4

    move-object/from16 v31, v5

    move-object v4, v7

    move-wide/from16 v32, v8

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v29, v13

    move-object/from16 v26, v14

    move-object/from16 v30, v15

    .end local v5    # "bcs":[I
    .end local v7    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v8    # "start":J
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "gss":[I
    .local v4, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v24    # "boundary":Ljava/lang/String;
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v26    # "line":Ljava/lang/String;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v30    # "gss":[I
    .restart local v31    # "bcs":[I
    .restart local v32    # "start":J
    .restart local v35    # "bl":I
    :try_start_21
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "Stream doesn\'t support mark"

    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v24    # "boundary":Ljava/lang/String;
    .end local v32    # "start":J
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    throw v5
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 1025
    .end local v0    # "bndbytes":[B
    .end local v4    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v19    # "done":Z
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v26    # "line":Ljava/lang/String;
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v35    # "bl":I
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    .restart local v32    # "start":J
    .restart local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_9
    move-exception v0

    move-object v8, v0

    move-wide/from16 v6, v20

    move-object/from16 v10, v24

    move-wide/from16 v4, v32

    goto/16 :goto_27

    .line 1023
    :catch_b
    move-exception v0

    move-wide/from16 v6, v20

    move-object/from16 v10, v24

    move-wide/from16 v4, v32

    goto/16 :goto_26

    .line 1025
    .end local v24    # "boundary":Ljava/lang/String;
    .end local v32    # "start":J
    .restart local v8    # "start":J
    .restart local v10    # "boundary":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-wide/from16 v32, v8

    move-object/from16 v24, v10

    move-object v8, v0

    move-wide/from16 v6, v20

    move-wide/from16 v4, v32

    .end local v8    # "start":J
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    .restart local v32    # "start":J
    goto/16 :goto_27

    .line 1023
    .end local v24    # "boundary":Ljava/lang/String;
    .end local v32    # "start":J
    .restart local v8    # "start":J
    .restart local v10    # "boundary":Ljava/lang/String;
    :catch_c
    move-exception v0

    move-wide/from16 v32, v8

    move-object/from16 v24, v10

    move-wide/from16 v6, v20

    move-wide/from16 v4, v32

    .end local v8    # "start":J
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    .restart local v32    # "start":J
    goto/16 :goto_26

    .line 1025
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v24    # "boundary":Ljava/lang/String;
    .end local v32    # "start":J
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    .local v9, "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    .local v17, "start":J
    :catchall_b
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object v8, v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    goto/16 :goto_27

    .line 1023
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v24    # "boundary":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    :catch_d
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    goto/16 :goto_26

    .line 822
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v24    # "boundary":Ljava/lang/String;
    .restart local v0    # "bndbytes":[B
    .local v4, "bl":I
    .restart local v5    # "bcs":[I
    .local v6, "i":I
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "gss":[I
    :cond_2a
    move/from16 v35, v4

    move-object/from16 v31, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v15

    const/4 v7, 0x0

    const/4 v8, 0x1

    .end local v4    # "bl":I
    .end local v5    # "bcs":[I
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v15    # "gss":[I
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v30    # "gss":[I
    .restart local v31    # "bcs":[I
    .restart local v35    # "bl":I
    add-int/lit8 v4, v35, -0x1

    .local v4, "j":I
    :goto_20
    if-ge v4, v6, :cond_2c

    .line 833
    nop

    :goto_21
    if-gtz v4, :cond_2b

    goto :goto_22

    .line 834
    :cond_2b
    add-int/lit8 v4, v4, -0x1

    :try_start_22
    aput v6, v30, v4

    goto :goto_21

    .line 824
    :cond_2c
    aget-byte v5, v0, v4

    sub-int v9, v4, v6

    aget-byte v9, v0, v9

    if-ne v5, v9, :cond_2d

    .line 826
    add-int/lit8 v5, v4, -0x1

    aput v6, v30, v5

    .line 822
    add-int/lit8 v4, v4, -0x1

    goto :goto_20

    .line 820
    .end local v4    # "j":I
    :cond_2d
    :goto_22
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v27

    move-object/from16 v13, v29

    move-object/from16 v15, v30

    move-object/from16 v5, v31

    move/from16 v4, v35

    goto/16 :goto_8

    .line 815
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v24    # "boundary":Ljava/lang/String;
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v35    # "bl":I
    .local v4, "bl":I
    .restart local v5    # "bcs":[I
    .local v6, "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .local v15, "i":I
    :cond_2e
    move/from16 v35, v4

    move-object/from16 v31, v5

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v29, v13

    const/4 v7, 0x0

    const/4 v8, 0x1

    .end local v4    # "bl":I
    .end local v5    # "bcs":[I
    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v31    # "bcs":[I
    .restart local v35    # "bl":I
    aget-byte v4, v0, v15

    add-int/lit8 v5, v15, 0x1

    aput v5, v31, v4

    .line 814
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v6, v20

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v27

    move-object/from16 v13, v29

    move-object/from16 v5, v31

    move/from16 v4, v35

    goto/16 :goto_7

    .line 1025
    .end local v0    # "bndbytes":[B
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v24    # "boundary":Ljava/lang/String;
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v31    # "bcs":[I
    .end local v35    # "bl":I
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object v8, v0

    move-wide/from16 v4, v17

    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    goto/16 :goto_27

    .line 1023
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v24    # "boundary":Ljava/lang/String;
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-wide/from16 v4, v17

    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    goto/16 :goto_26

    .line 799
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v24    # "boundary":Ljava/lang/String;
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_2f
    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v29, v13

    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v4, "Missing start boundary"

    invoke-direct {v0, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v17    # "start":J
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v24    # "boundary":Ljava/lang/String;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    throw v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    .line 1025
    .end local v14    # "line":Ljava/lang/String;
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v17    # "start":J
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v24    # "boundary":Ljava/lang/String;
    .restart local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_d
    move-exception v0

    move-object v8, v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    move-object/from16 v10, v24

    goto/16 :goto_27

    .line 1023
    :catch_f
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    move-object/from16 v10, v24

    goto/16 :goto_26

    .line 774
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v24    # "boundary":Ljava/lang/String;
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "i":I
    :cond_30
    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v29, v13

    .line 781
    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    :goto_23
    :try_start_23
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_11
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    if-lez v0, :cond_33

    .line 784
    if-nez v29, :cond_31

    .line 787
    :try_start_24
    const-string v0, "line.separator"

    const-string v4, "\n"

    invoke-static {v0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_24} :catch_10
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_11
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    .line 786
    nop

    .end local v29    # "lineSeparator":Ljava/lang/String;
    .local v0, "lineSeparator":Ljava/lang/String;
    move-object v13, v0

    goto :goto_24

    .line 788
    .end local v0    # "lineSeparator":Ljava/lang/String;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 789
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_25
    const-string v4, "\n"

    move-object v13, v4

    .end local v29    # "lineSeparator":Ljava/lang/String;
    .local v4, "lineSeparator":Ljava/lang/String;
    goto :goto_24

    .line 784
    .end local v0    # "ex":Ljava/lang/SecurityException;
    .end local v4    # "lineSeparator":Ljava/lang/String;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    :cond_31
    move-object/from16 v13, v29

    .line 793
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    :goto_24
    if-nez v27, :cond_32

    .line 794
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v12, v0

    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .local v0, "preamblesb":Ljava/lang/StringBuffer;
    goto :goto_25

    .line 793
    .end local v0    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_32
    move-object/from16 v12, v27

    .line 795
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    :goto_25
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_11
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v11, v25

    goto/16 :goto_2

    .line 781
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    :cond_33
    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v11, v25

    move-object/from16 v12, v27

    move-object/from16 v13, v29

    goto/16 :goto_2

    .line 1025
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move-object v8, v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    goto/16 :goto_27

    .line 1023
    :catch_11
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    goto :goto_26

    .line 1025
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    :catchall_f
    move-exception v0

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object v8, v0

    move-wide/from16 v4, v17

    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    goto :goto_27

    .line 1023
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v4, v17

    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    goto :goto_26

    .line 761
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .local v0, "c":C
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "i":I
    :cond_34
    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v29, v13

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 759
    .end local v0    # "c":C
    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v11, v25

    move-object/from16 v12, v27

    move-object/from16 v13, v29

    goto/16 :goto_3

    .line 1025
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v17    # "start":J
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .local v4, "start":J
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move-wide/from16 v17, v4

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object v8, v0

    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .restart local v17    # "start":J
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    goto :goto_27

    .line 1023
    .end local v17    # "start":J
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    :catch_13
    move-exception v0

    move-wide/from16 v17, v4

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    .line 1024
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .local v0, "ioex":Ljava/io/IOException;
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    :goto_26
    :try_start_26
    new-instance v8, Ljavax/mail/MessagingException;

    const-string v9, "IO Error"

    invoke-direct {v8, v9, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    throw v8
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    .line 1025
    .end local v0    # "ioex":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v10    # "boundary":Ljava/lang/String;
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    .restart local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_11
    move-exception v0

    move-object v8, v0

    .line 1027
    :goto_27
    :try_start_27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_14
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    goto :goto_28

    .line 1028
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catch_14
    move-exception v0

    .line 1031
    :goto_28
    :try_start_28
    throw v8

    .line 743
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .local v0, "boundary":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    :cond_35
    move-wide/from16 v17, v4

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .restart local v17    # "start":J
    .restart local v20    # "end":J
    .restart local v22    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "bp":Ljava/lang/String;
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Missing boundary parameter"

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 731
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v17    # "start":J
    .end local v20    # "end":J
    .end local v22    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "bp":Ljava/lang/String;
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    :catch_15
    move-exception v0

    move-wide/from16 v17, v4

    move-wide/from16 v20, v6

    .line 732
    .end local v4    # "start":J
    .end local v6    # "end":J
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v17    # "start":J
    .restart local v20    # "end":J
    :goto_29
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "No inputstream from datasource"

    invoke-direct {v4, v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    .line 717
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v17    # "start":J
    .end local v20    # "end":J
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1052
    if-nez p3, :cond_0

    .line 1053
    const/4 v0, 0x0

    return v0

    .line 1054
    :cond_0
    const/4 v0, 0x0

    .line 1055
    .local v0, "total":I
    nop

    :goto_0
    if-gtz p3, :cond_1

    goto :goto_1

    .line 1056
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1057
    .local v1, "bsize":I
    if-gtz v1, :cond_3

    .line 1058
    nop

    .line 1063
    .end local v1    # "bsize":I
    :goto_1
    if-lez v0, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    return v1

    .line 1059
    .restart local v1    # "bsize":I
    :cond_3
    add-int/2addr p2, v1

    .line 1060
    add-int/2addr v0, v1

    .line 1061
    sub-int/2addr p3, v1

    goto :goto_0
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    nop

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 1077
    return-void

    .line 1072
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 1073
    .local v2, "cur":J
    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 1075
    sub-long/2addr p2, v2

    goto :goto_0

    .line 1074
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "can\'t skip"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 325
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 326
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 324
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "part":Ljavax/mail/BodyPart;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 345
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 346
    invoke-super {p0, p1, p2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 344
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "part":Ljavax/mail/BodyPart;
    .end local p2    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1092
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1125
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1109
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 256
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 254
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .locals 5
    .param p1, "CID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 270
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 277
    .end local v1    # "i":I
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 272
    .restart local v1    # "i":I
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    .line 273
    .local v2, "part":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 275
    monitor-exit p0

    return-object v2

    .line 271
    .end local v2    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v3    # "s":Ljava/lang/String;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local p1    # "CID":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 243
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 241
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreamble()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 377
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 378
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 376
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isComplete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 365
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 363
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 462
    :try_start_0
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    if-eqz v0, :cond_0

    .line 463
    monitor-exit p0

    return-void

    .line 465
    :cond_0
    :try_start_1
    sget-boolean v0, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    if-eqz v0, :cond_1

    .line 466
    invoke-direct/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->parsebm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    .line 467
    monitor-exit p0

    return-void

    .line 470
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :cond_1
    const/4 v2, 0x0

    .line 471
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 472
    .local v3, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v4, 0x0

    .local v4, "start":J
    const-wide/16 v6, 0x0

    .line 475
    .local v6, "end":J
    :try_start_2
    iget-object v0, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    .line 476
    instance-of v0, v2, Ljava/io/ByteArrayInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    if-nez v0, :cond_2

    .line 477
    :try_start_3
    instance-of v0, v2, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_2

    .line 478
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_2

    .line 479
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    move-object v2, v0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    move-wide/from16 v17, v4

    goto/16 :goto_1d

    .line 483
    :cond_2
    :goto_0
    :try_start_4
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_3

    .line 484
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v3, v0

    .line 486
    :cond_3
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v8, v1, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 487
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    const/4 v0, 0x0

    .line 488
    .local v0, "boundary":Ljava/lang/String;
    const-string v9, "boundary"

    invoke-virtual {v8, v9}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, "bp":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 490
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "--"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 491
    :cond_4
    sget-boolean v10, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    if-eqz v10, :cond_2e

    move-object v10, v0

    .line 496
    .end local v0    # "boundary":Ljava/lang/String;
    .local v10, "boundary":Ljava/lang/String;
    :goto_1
    :try_start_5
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v0

    .line 497
    .local v11, "lin":Lcom/sun/mail/util/LineInputStream;
    const/4 v0, 0x0

    .line 499
    .local v0, "preamblesb":Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 500
    .local v12, "lineSeparator":Ljava/lang/String;
    move-object v13, v12

    move-object v12, v0

    .end local v0    # "preamblesb":Ljava/lang/StringBuffer;
    .local v12, "preamblesb":Ljava/lang/StringBuffer;
    .local v13, "lineSeparator":Ljava/lang/String;
    :goto_2
    invoke-virtual {v11}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .local v14, "line":Ljava/lang/String;
    const/4 v15, 0x1

    if-nez v0, :cond_5

    move-wide/from16 v17, v4

    goto :goto_5

    .line 508
    :cond_5
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v15

    move v15, v0

    .local v15, "i":I
    :goto_3
    if-gez v15, :cond_6

    move-wide/from16 v17, v4

    goto :goto_4

    .line 509
    :cond_6
    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    .line 510
    .local v0, "c":C
    move-wide/from16 v17, v4

    const/16 v4, 0x20

    .end local v4    # "start":J
    .local v17, "start":J
    if-eq v0, v4, :cond_2d

    const/16 v4, 0x9

    if-eq v0, v4, :cond_2c

    .line 511
    nop

    .line 513
    .end local v0    # "c":C
    :goto_4
    add-int/lit8 v0, v15, 0x1

    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    move-object v14, v0

    .line 514
    if-eqz v10, :cond_8

    .line 515
    :try_start_7
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_7

    .line 516
    goto :goto_5

    .line 515
    :cond_7
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    goto/16 :goto_16

    .line 523
    :cond_8
    :try_start_8
    const-string v0, "--"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    if-eqz v0, :cond_28

    .line 524
    move-object v10, v14

    .line 525
    nop

    .line 547
    .end local v15    # "i":I
    :goto_5
    if-eqz v14, :cond_27

    .line 550
    if-eqz v12, :cond_9

    .line 551
    :try_start_9
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 693
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v4, v17

    move-object v8, v0

    goto/16 :goto_1b

    .line 691
    :catch_1
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v4, v17

    goto/16 :goto_1a

    .line 554
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_9
    :goto_6
    :try_start_a
    invoke-static {v10}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 555
    .local v0, "bndbytes":[B
    array-length v4, v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 561
    .local v4, "bl":I
    const/4 v5, 0x0

    .line 563
    .local v5, "done":Z
    nop

    :goto_7
    if-eqz v5, :cond_a

    goto :goto_8

    .line 564
    :cond_a
    const/4 v15, 0x0

    .line 565
    .local v15, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v3, :cond_f

    .line 566
    :try_start_b
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v19

    move-wide/from16 v17, v19

    .line 568
    :cond_b
    invoke-virtual {v11}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v19
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v14, v19

    if-eqz v19, :cond_c

    :try_start_c
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-gtz v19, :cond_b

    .line 570
    :cond_c
    if-nez v14, :cond_e

    .line 571
    :try_start_d
    sget-boolean v16, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v16, :cond_d

    .line 575
    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "done":Z
    .local v19, "done":Z
    :try_start_e
    iput-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 576
    nop

    .line 695
    .end local v0    # "bndbytes":[B
    .end local v4    # "bl":I
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v19    # "done":Z
    :goto_8
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    goto :goto_9

    .line 696
    :catch_2
    move-exception v0

    .line 701
    :goto_9
    const/4 v4, 0x1

    :try_start_10
    iput-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    .line 702
    monitor-exit p0

    return-void

    .line 572
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "bl":I
    .restart local v5    # "done":Z
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "headers":Ljavax/mail/internet/InternetHeaders;
    :cond_d
    move/from16 v19, v5

    .end local v5    # "done":Z
    .restart local v19    # "done":Z
    :try_start_11
    new-instance v5, Ljavax/mail/MessagingException;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 573
    move-wide/from16 v20, v6

    .end local v6    # "end":J
    .local v20, "end":J
    :try_start_12
    const-string v6, "missing multipart end boundary"

    .line 572
    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v17    # "start":J
    .end local v20    # "end":J
    throw v5
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 693
    .end local v0    # "bndbytes":[B
    .end local v4    # "bl":I
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v19    # "done":Z
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    .restart local v17    # "start":J
    .restart local v20    # "end":J
    .restart local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_1
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    move-object v8, v0

    goto/16 :goto_1b

    .line 691
    :catch_3
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    goto/16 :goto_1a

    .line 570
    .end local v20    # "end":J
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "bl":I
    .restart local v5    # "done":Z
    .restart local v6    # "end":J
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "headers":Ljavax/mail/internet/InternetHeaders;
    :cond_e
    move/from16 v19, v5

    move-wide/from16 v20, v6

    .end local v5    # "done":Z
    .end local v6    # "end":J
    .restart local v19    # "done":Z
    .restart local v20    # "end":J
    move-wide/from16 v5, v17

    goto :goto_a

    .line 693
    .end local v0    # "bndbytes":[B
    .end local v4    # "bl":I
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v19    # "done":Z
    .end local v20    # "end":J
    .restart local v6    # "end":J
    :catchall_2
    move-exception v0

    move-wide/from16 v20, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v4, v17

    move-object v8, v0

    .end local v6    # "end":J
    .restart local v20    # "end":J
    goto/16 :goto_1b

    .line 691
    .end local v20    # "end":J
    .restart local v6    # "end":J
    :catch_4
    move-exception v0

    move-wide/from16 v20, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v4, v17

    .end local v6    # "end":J
    .restart local v20    # "end":J
    goto/16 :goto_1a

    .line 580
    .end local v20    # "end":J
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "bl":I
    .restart local v5    # "done":Z
    .restart local v6    # "end":J
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "headers":Ljavax/mail/internet/InternetHeaders;
    :cond_f
    move/from16 v19, v5

    move-wide/from16 v20, v6

    .end local v5    # "done":Z
    .end local v6    # "end":J
    .restart local v19    # "done":Z
    .restart local v20    # "end":J
    :try_start_13
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v5
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-object v15, v5

    move-wide/from16 v5, v17

    .line 583
    .end local v17    # "start":J
    .local v5, "start":J
    :goto_a
    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v7
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    if-eqz v7, :cond_26

    .line 586
    const/4 v7, 0x0

    .line 588
    .local v7, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v3, :cond_10

    .line 589
    :try_start_15
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-object/from16 v7, v17

    move-wide/from16 v17, v20

    goto :goto_b

    .line 693
    .end local v0    # "bndbytes":[B
    .end local v4    # "bl":I
    .end local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v19    # "done":Z
    :catchall_3
    move-exception v0

    move-wide v4, v5

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v6, v20

    move-object v8, v0

    goto/16 :goto_1b

    .line 691
    :catch_5
    move-exception v0

    move-wide v4, v5

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v6, v20

    goto/16 :goto_1a

    .line 591
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "bl":I
    .restart local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v19    # "done":Z
    :cond_10
    :try_start_16
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 593
    .end local v20    # "end":J
    .local v17, "end":J
    :goto_b
    const/16 v20, 0x1

    .line 595
    .local v20, "bol":Z
    const/16 v21, -0x1

    .local v21, "eol1":I
    const/16 v22, -0x1

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-wide/from16 v8, v17

    move/from16 v11, v22

    move-object/from16 v22, v10

    move/from16 v10, v21

    .line 601
    .end local v9    # "bp":Ljava/lang/String;
    .end local v17    # "end":J
    .end local v21    # "eol1":I
    .local v8, "end":J
    .local v10, "eol1":I
    .local v11, "eol2":I
    .local v22, "boundary":Ljava/lang/String;
    .local v23, "cType":Ljavax/mail/internet/ContentType;
    .local v24, "bp":Ljava/lang/String;
    .local v25, "lin":Lcom/sun/mail/util/LineInputStream;
    :goto_c
    move-object/from16 v17, v14

    .end local v14    # "line":Ljava/lang/String;
    .local v17, "line":Ljava/lang/String;
    if-eqz v20, :cond_1b

    .line 607
    add-int/lit8 v14, v4, 0x4

    add-int/lit16 v14, v14, 0x3e8

    :try_start_17
    invoke-virtual {v2, v14}, Ljava/io/InputStream;->mark(I)V

    .line 609
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_d
    if-lt v14, v4, :cond_11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    goto :goto_e

    .line 610
    :cond_11
    move-object/from16 v26, v12

    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .local v26, "preamblesb":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v12

    move-object/from16 v27, v13

    .end local v13    # "lineSeparator":Ljava/lang/String;
    .local v27, "lineSeparator":Ljava/lang/String;
    aget-byte v13, v0, v14

    and-int/lit16 v13, v13, 0xff

    if-eq v12, v13, :cond_1a

    .line 611
    nop

    .line 612
    :goto_e
    if-ne v14, v4, :cond_17

    .line 614
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 615
    .local v12, "b2":I
    const/16 v13, 0x2d

    if-ne v12, v13, :cond_12

    .line 616
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v13

    move-object/from16 v28, v0

    const/16 v0, 0x2d

    .end local v0    # "bndbytes":[B
    .local v28, "bndbytes":[B
    if-ne v13, v0, :cond_13

    .line 617
    const/4 v13, 0x1

    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 618
    const/4 v0, 0x1

    .line 619
    .end local v19    # "done":Z
    .local v0, "done":Z
    const/4 v13, 0x0

    goto/16 :goto_12

    .line 615
    .end local v28    # "bndbytes":[B
    .local v0, "bndbytes":[B
    .restart local v19    # "done":Z
    :cond_12
    move-object/from16 v28, v0

    .line 623
    .end local v0    # "bndbytes":[B
    .restart local v28    # "bndbytes":[B
    :cond_13
    :goto_f
    const/16 v13, 0x20

    if-eq v12, v13, :cond_16

    const/16 v0, 0x9

    if-eq v12, v0, :cond_16

    .line 626
    const/16 v0, 0xa

    if-ne v12, v0, :cond_14

    .line 627
    goto :goto_10

    .line 628
    :cond_14
    const/16 v0, 0xd

    if-ne v12, v0, :cond_18

    .line 629
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/io/InputStream;->mark(I)V

    .line 630
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v13, 0xa

    if-eq v0, v13, :cond_15

    .line 631
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 685
    .end local v12    # "b2":I
    .end local v14    # "i":I
    :cond_15
    :goto_10
    move/from16 v0, v19

    const/4 v13, 0x0

    goto :goto_12

    .line 624
    .restart local v12    # "b2":I
    .restart local v14    # "i":I
    :cond_16
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    move v12, v0

    goto :goto_f

    .line 612
    .end local v12    # "b2":I
    .end local v28    # "bndbytes":[B
    .restart local v0    # "bndbytes":[B
    :cond_17
    move-object/from16 v28, v0

    .line 636
    .end local v0    # "bndbytes":[B
    .restart local v28    # "bndbytes":[B
    :cond_18
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 640
    if-eqz v7, :cond_1c

    const/4 v0, -0x1

    if-eq v10, v0, :cond_1c

    .line 641
    invoke-virtual {v7, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 642
    if-eq v11, v0, :cond_19

    .line 643
    invoke-virtual {v7, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 644
    :cond_19
    move v11, v0

    move v10, v0

    .end local v10    # "eol1":I
    .local v0, "eol1":I
    goto :goto_11

    .line 609
    .end local v28    # "bndbytes":[B
    .local v0, "bndbytes":[B
    .restart local v10    # "eol1":I
    :cond_1a
    move-object/from16 v28, v0

    .end local v0    # "bndbytes":[B
    .restart local v28    # "bndbytes":[B
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    goto :goto_d

    .line 601
    .end local v14    # "i":I
    .end local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v27    # "lineSeparator":Ljava/lang/String;
    .end local v28    # "bndbytes":[B
    .restart local v0    # "bndbytes":[B
    .local v12, "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    :cond_1b
    move-object/from16 v28, v0

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    .line 649
    .end local v0    # "bndbytes":[B
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v27    # "lineSeparator":Ljava/lang/String;
    .restart local v28    # "bndbytes":[B
    :cond_1c
    :goto_11
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    move v12, v0

    .local v12, "b":I
    if-gez v0, :cond_1f

    .line 650
    sget-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v0, :cond_1e

    .line 653
    const/4 v13, 0x0

    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 654
    const/4 v0, 0x1

    .line 655
    .end local v19    # "done":Z
    .local v0, "done":Z
    nop

    .line 685
    .end local v12    # "b":I
    :goto_12
    if-eqz v3, :cond_1d

    .line 686
    invoke-interface {v3, v5, v6, v8, v9}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v12

    .local v12, "part":Ljavax/mail/internet/MimeBodyPart;
    goto :goto_13

    .line 688
    .end local v12    # "part":Ljavax/mail/internet/MimeBodyPart;
    :cond_1d
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v1, v15, v12}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v12

    .line 689
    .restart local v12    # "part":Ljavax/mail/internet/MimeBodyPart;
    :goto_13
    invoke-super {v1, v12}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move-object/from16 v14, v17

    move-object/from16 v10, v22

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-wide/from16 v17, v5

    move-wide v6, v8

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move v5, v0

    move-object/from16 v0, v28

    goto/16 :goto_7

    .line 651
    .end local v0    # "done":Z
    .local v12, "b":I
    .restart local v19    # "done":Z
    :cond_1e
    new-instance v0, Ljavax/mail/MessagingException;

    .line 652
    const-string v13, "missing multipart end boundary"

    .line 651
    invoke-direct {v0, v13}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v5    # "start":J
    .end local v8    # "end":J
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    throw v0

    .line 662
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v5    # "start":J
    .restart local v8    # "end":J
    .restart local v22    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    .restart local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :cond_1f
    const/4 v13, 0x0

    const/16 v0, 0xd

    if-eq v12, v0, :cond_21

    const/16 v0, 0xa

    if-ne v12, v0, :cond_20

    goto :goto_14

    .line 675
    :cond_20
    const/16 v20, 0x0

    .line 676
    if-eqz v7, :cond_25

    .line 677
    invoke-virtual {v7, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 600
    .end local v12    # "b":I
    goto :goto_15

    .line 663
    .restart local v12    # "b":I
    :cond_21
    :goto_14
    const/16 v20, 0x1

    .line 664
    if-eqz v3, :cond_22

    .line 665
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v29

    const-wide/16 v31, 0x1

    sub-long v29, v29, v31

    move-wide/from16 v8, v29

    .line 666
    :cond_22
    move v10, v12

    .line 667
    const/16 v0, 0xd

    if-ne v12, v0, :cond_24

    .line 668
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/io/InputStream;->mark(I)V

    .line 669
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    move v12, v0

    const/16 v13, 0xa

    if-ne v0, v13, :cond_23

    .line 670
    move v11, v12

    move-object/from16 v14, v17

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v0, v28

    goto/16 :goto_c

    .line 672
    :cond_23
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_15

    .line 667
    :cond_24
    const/4 v14, 0x1

    .line 601
    .end local v12    # "b":I
    :cond_25
    :goto_15
    move-object/from16 v14, v17

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v0, v28

    goto/16 :goto_c

    .line 693
    .end local v4    # "bl":I
    .end local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "eol1":I
    .end local v11    # "eol2":I
    .end local v15    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v17    # "line":Ljava/lang/String;
    .end local v19    # "done":Z
    .end local v20    # "bol":Z
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v27    # "lineSeparator":Ljava/lang/String;
    .end local v28    # "bndbytes":[B
    :catchall_4
    move-exception v0

    move-wide v4, v5

    move-wide v6, v8

    move-object/from16 v10, v22

    move-object v8, v0

    goto/16 :goto_1b

    .line 691
    :catch_6
    move-exception v0

    move-wide v4, v5

    move-wide v6, v8

    move-object/from16 v10, v22

    goto/16 :goto_1a

    .line 584
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .local v0, "bndbytes":[B
    .restart local v4    # "bl":I
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .local v10, "boundary":Ljava/lang/String;
    .local v11, "lin":Lcom/sun/mail/util/LineInputStream;
    .local v12, "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .local v14, "line":Ljava/lang/String;
    .restart local v15    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v19    # "done":Z
    .local v20, "end":J
    :cond_26
    move-object/from16 v28, v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v17, v14

    .end local v0    # "bndbytes":[B
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v22    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v27    # "lineSeparator":Ljava/lang/String;
    .restart local v28    # "bndbytes":[B
    :try_start_18
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v7, "Stream doesn\'t support mark"

    invoke-direct {v0, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v5    # "start":J
    .end local v20    # "end":J
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    throw v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 693
    .end local v4    # "bl":I
    .end local v15    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v17    # "line":Ljava/lang/String;
    .end local v19    # "done":Z
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v27    # "lineSeparator":Ljava/lang/String;
    .end local v28    # "bndbytes":[B
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v5    # "start":J
    .restart local v20    # "end":J
    .restart local v22    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    .restart local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_5
    move-exception v0

    move-object v8, v0

    move-wide v4, v5

    move-wide/from16 v6, v20

    move-object/from16 v10, v22

    goto/16 :goto_1b

    .line 691
    :catch_7
    move-exception v0

    move-wide v4, v5

    move-wide/from16 v6, v20

    move-object/from16 v10, v22

    goto/16 :goto_1a

    .line 693
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v22, v10

    move-object v8, v0

    move-wide v4, v5

    move-wide/from16 v6, v20

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v22    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    goto/16 :goto_1b

    .line 691
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v22, v10

    move-wide v4, v5

    move-wide/from16 v6, v20

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v22    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    goto/16 :goto_1a

    .line 693
    .end local v5    # "start":J
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    .local v17, "start":J
    :catchall_7
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v22, v10

    move-object v8, v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v22    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    goto/16 :goto_1b

    .line 691
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v22, v10

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v22    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    goto/16 :goto_1a

    .line 693
    .end local v20    # "end":J
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v22, v10

    move-object v8, v0

    move-wide/from16 v4, v17

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v22    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    goto/16 :goto_1b

    .line 691
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    :catch_a
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v22, v10

    move-wide/from16 v4, v17

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v22    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    goto/16 :goto_1a

    .line 548
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_27
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v22    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v27    # "lineSeparator":Ljava/lang/String;
    :try_start_19
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v4, "Missing start boundary"

    invoke-direct {v0, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v6    # "end":J
    .end local v17    # "start":J
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    throw v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 693
    .end local v14    # "line":Ljava/lang/String;
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v27    # "lineSeparator":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v6    # "end":J
    .restart local v17    # "start":J
    .restart local v22    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    .restart local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_9
    move-exception v0

    move-object v8, v0

    move-wide/from16 v4, v17

    move-object/from16 v10, v22

    goto/16 :goto_1b

    .line 691
    :catch_b
    move-exception v0

    move-wide/from16 v4, v17

    move-object/from16 v10, v22

    goto/16 :goto_1a

    .line 523
    .end local v22    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v10    # "boundary":Ljava/lang/String;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .local v15, "i":I
    :cond_28
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    .line 530
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v27    # "lineSeparator":Ljava/lang/String;
    :goto_16
    :try_start_1a
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    if-lez v0, :cond_2b

    .line 533
    if-nez v27, :cond_29

    .line 536
    :try_start_1b
    const-string v0, "line.separator"

    const-string v4, "\n"

    invoke-static {v0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 535
    nop

    .end local v27    # "lineSeparator":Ljava/lang/String;
    .local v0, "lineSeparator":Ljava/lang/String;
    move-object v13, v0

    goto :goto_17

    .line 537
    .end local v0    # "lineSeparator":Ljava/lang/String;
    .restart local v27    # "lineSeparator":Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 538
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_1c
    const-string v4, "\n"

    move-object v13, v4

    .end local v27    # "lineSeparator":Ljava/lang/String;
    .local v4, "lineSeparator":Ljava/lang/String;
    goto :goto_17

    .line 533
    .end local v0    # "ex":Ljava/lang/SecurityException;
    .end local v4    # "lineSeparator":Ljava/lang/String;
    .restart local v27    # "lineSeparator":Ljava/lang/String;
    :cond_29
    move-object/from16 v13, v27

    .line 542
    .end local v27    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    :goto_17
    if-nez v26, :cond_2a

    .line 543
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v12, v0

    .end local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .local v0, "preamblesb":Ljava/lang/StringBuffer;
    goto :goto_18

    .line 542
    .end local v0    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v26    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_2a
    move-object/from16 v12, v26

    .line 544
    .end local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    :goto_18
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    move-wide/from16 v4, v17

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v11, v25

    goto/16 :goto_2

    .line 530
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v27    # "lineSeparator":Ljava/lang/String;
    :cond_2b
    move-wide/from16 v4, v17

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    goto/16 :goto_2

    .line 693
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v27    # "lineSeparator":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object v8, v0

    move-wide/from16 v4, v17

    goto/16 :goto_1b

    .line 691
    :catch_d
    move-exception v0

    move-wide/from16 v4, v17

    goto :goto_1a

    .line 693
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object v8, v0

    move-wide/from16 v4, v17

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    goto :goto_1b

    .line 691
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v4, v17

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    goto :goto_1a

    .line 510
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .local v0, "c":C
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    .restart local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "i":I
    :cond_2c
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    goto :goto_19

    :cond_2d
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    const/16 v4, 0x9

    :goto_19
    const/4 v5, 0x1

    .line 508
    .end local v0    # "c":C
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .end local v11    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v12    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    .restart local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v27    # "lineSeparator":Ljava/lang/String;
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v4, v17

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    goto/16 :goto_3

    .line 693
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v17    # "start":J
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .end local v25    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v26    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v27    # "lineSeparator":Ljava/lang/String;
    .local v4, "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-wide/from16 v17, v4

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object v8, v0

    .end local v4    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .restart local v17    # "start":J
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    goto :goto_1b

    .line 691
    .end local v17    # "start":J
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v4    # "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    :catch_f
    move-exception v0

    move-wide/from16 v17, v4

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .line 692
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .local v0, "ioex":Ljava/io/IOException;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    :goto_1a
    :try_start_1d
    new-instance v8, Ljavax/mail/MessagingException;

    const-string v9, "IO Error"

    invoke-direct {v8, v9, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    throw v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    .line 693
    .end local v0    # "ioex":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v10    # "boundary":Ljava/lang/String;
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    .restart local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_d
    move-exception v0

    move-object v8, v0

    .line 695
    :goto_1b
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_10
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    goto :goto_1c

    .line 696
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catch_10
    move-exception v0

    .line 699
    :goto_1c
    :try_start_1f
    throw v8

    .line 492
    .end local v10    # "boundary":Ljava/lang/String;
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .local v0, "boundary":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "bp":Ljava/lang/String;
    :cond_2e
    move-wide/from16 v17, v4

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .end local v4    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "bp":Ljava/lang/String;
    .restart local v17    # "start":J
    .restart local v23    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v24    # "bp":Ljava/lang/String;
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Missing boundary parameter"

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 480
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v17    # "start":J
    .end local v23    # "cType":Ljavax/mail/internet/ContentType;
    .end local v24    # "bp":Ljava/lang/String;
    .restart local v4    # "start":J
    :catch_11
    move-exception v0

    move-wide/from16 v17, v4

    .line 481
    .end local v4    # "start":J
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v17    # "start":J
    :goto_1d
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "No inputstream from datasource"

    invoke-direct {v4, v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    .line 461
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v6    # "end":J
    .end local v17    # "start":J
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeBodyPart(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 310
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(I)V

    .line 311
    return-void
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 293
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(Ljavax/mail/BodyPart;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setPreamble(Ljava/lang/String;)V
    .locals 0
    .param p1, "preamble"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 394
    :try_start_0
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 393
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "preamble":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 231
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 230
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "subtype":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updateHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 417
    .end local v0    # "i":I
    return-void

    .line 416
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 425
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    new-instance v1, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 432
    .local v1, "los":Lcom/sun/mail/util/LineOutputStream;
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 434
    .local v2, "pb":[B
    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    .line 436
    array-length v3, v2

    if-lez v3, :cond_0

    .line 437
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 438
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 442
    .end local v2    # "pb":[B
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 449
    .end local v2    # "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 443
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 444
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 445
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v1    # "los":Lcom/sun/mail/util/LineOutputStream;
    .end local v2    # "i":I
    .end local p1    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
