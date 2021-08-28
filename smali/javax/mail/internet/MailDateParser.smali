.class Ljavax/mail/internet/MailDateParser;
.super Ljava/lang/Object;
.source "MailDateFormat.java"


# instance fields
.field index:I

.field orig:[C


# direct methods
.method public constructor <init>([C)V
    .locals 1
    .param p1, "orig"    # [C

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    .line 462
    iput-object p1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    .line 463
    return-void
.end method


# virtual methods
.method getIndex()I
    .locals 1

    .line 900
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return v0
.end method

.method public parseAlphaTimeZone()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 820
    const-string v0, "Bad Alpha TimeZone"

    const/4 v1, 0x0

    .line 821
    .local v1, "result":I
    const/4 v2, 0x0

    .line 825
    .local v2, "foundCommon":Z
    :try_start_0
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v4

    const/16 v4, 0x74

    const/16 v6, 0x54

    sparse-switch v3, :sswitch_data_0

    .line 872
    new-instance v3, Ljava/text/ParseException;

    goto/16 :goto_6

    .line 828
    :sswitch_0
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v5

    .line 829
    .local v3, "curr":C
    if-eq v3, v6, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance v4, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "result":I
    .end local v2    # "foundCommon":Z
    .end local p0    # "this":Ljavax/mail/internet/MailDateParser;
    throw v4

    .line 830
    .restart local v1    # "result":I
    .restart local v2    # "foundCommon":Z
    .restart local p0    # "this":Ljavax/mail/internet/MailDateParser;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 831
    goto :goto_2

    .line 867
    .end local v3    # "curr":C
    :sswitch_1
    const/16 v1, 0x1e0

    .line 868
    const/4 v2, 0x1

    .line 869
    goto :goto_2

    .line 861
    :sswitch_2
    const/16 v1, 0x1a4

    .line 862
    const/4 v2, 0x1

    .line 863
    goto :goto_2

    .line 837
    :sswitch_3
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v5

    .line 838
    .restart local v3    # "curr":C
    const/16 v5, 0x4d

    if-eq v3, v5, :cond_2

    const/16 v5, 0x6d

    if-ne v3, v5, :cond_3

    .line 839
    :cond_2
    iget-object v5, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v5, v5, v7

    move v3, v5

    .line 840
    if-eq v3, v6, :cond_4

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 845
    :cond_3
    new-instance v4, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "result":I
    .end local v2    # "foundCommon":Z
    .end local p0    # "this":Ljavax/mail/internet/MailDateParser;
    throw v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .restart local v1    # "result":I
    .restart local v2    # "foundCommon":Z
    .restart local p0    # "this":Ljavax/mail/internet/MailDateParser;
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 842
    goto :goto_2

    .line 849
    .end local v3    # "curr":C
    :sswitch_4
    const/16 v1, 0x12c

    .line 850
    const/4 v2, 0x1

    .line 851
    goto :goto_2

    .line 855
    :sswitch_5
    const/16 v1, 0x168

    .line 856
    const/4 v2, 0x1

    .line 857
    nop

    .line 878
    :goto_2
    if-eqz v2, :cond_b

    .line 879
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v5

    .line 880
    .restart local v3    # "curr":C
    const/16 v5, 0x53

    if-eq v3, v5, :cond_9

    const/16 v5, 0x73

    if-ne v3, v5, :cond_5

    goto :goto_4

    .line 885
    :cond_5
    const/16 v5, 0x44

    if-eq v3, v5, :cond_6

    const/16 v5, 0x64

    if-ne v3, v5, :cond_b

    .line 886
    :cond_6
    iget-object v5, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v5, v7

    .line 887
    if-eq v3, v6, :cond_8

    if-eq v3, v4, :cond_7

    goto :goto_3

    .line 891
    :cond_7
    new-instance v4, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 889
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, -0x3c

    goto :goto_5

    .line 881
    :cond_9
    :goto_4
    iget-object v5, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v5, v7

    .line 882
    if-eq v3, v6, :cond_b

    if-ne v3, v4, :cond_a

    goto :goto_5

    .line 883
    :cond_a
    new-instance v4, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 896
    .end local v3    # "curr":C
    :cond_b
    :goto_5
    return v1

    .line 872
    :goto_6
    :try_start_1
    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v3, v0, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "result":I
    .end local v2    # "foundCommon":Z
    .end local p0    # "this":Ljavax/mail/internet/MailDateParser;
    throw v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 874
    .restart local v1    # "result":I
    .restart local v2    # "foundCommon":Z
    .restart local p0    # "this":Ljavax/mail/internet/MailDateParser;
    :catch_0
    move-exception v3

    .line 875
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_5
        0x45 -> :sswitch_4
        0x47 -> :sswitch_3
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
        0x55 -> :sswitch_0
        0x63 -> :sswitch_5
        0x65 -> :sswitch_4
        0x67 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method public parseMonth()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 653
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x52

    const/16 v3, 0x70

    const/16 v4, 0x75

    const/16 v5, 0x55

    const/16 v6, 0x50

    const/16 v7, 0x41

    if-eq v0, v7, :cond_19

    const/16 v8, 0x44

    const/16 v9, 0x63

    const/16 v10, 0x43

    const/16 v11, 0x65

    const/16 v12, 0x45

    if-eq v0, v8, :cond_16

    const/16 v8, 0x46

    if-eq v0, v8, :cond_13

    const/16 v8, 0x4a

    const/16 v13, 0x61

    if-eq v0, v8, :cond_b

    const/16 v8, 0x53

    if-eq v0, v8, :cond_8

    if-eq v0, v13, :cond_19

    const/16 v8, 0x64

    if-eq v0, v8, :cond_16

    const/16 v8, 0x66

    if-eq v0, v8, :cond_13

    const/16 v8, 0x6a

    if-eq v0, v8, :cond_b

    const/16 v4, 0x73

    if-eq v0, v4, :cond_8

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 761
    goto/16 :goto_4

    .line 731
    :pswitch_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 732
    .local v0, "curr":C
    if-eq v0, v10, :cond_0

    if-ne v0, v9, :cond_1f

    .line 733
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 734
    const/16 v1, 0x54

    if-eq v0, v1, :cond_1

    const/16 v1, 0x74

    if-ne v0, v1, :cond_1f

    .line 735
    :cond_1
    const/16 v1, 0x9

    return v1

    .line 742
    .end local v0    # "curr":C
    :pswitch_1
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 743
    .restart local v0    # "curr":C
    const/16 v1, 0x4f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1f

    .line 744
    :cond_2
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 745
    const/16 v1, 0x56

    if-eq v0, v1, :cond_3

    const/16 v1, 0x76

    if-ne v0, v1, :cond_1f

    .line 746
    :cond_3
    const/16 v1, 0xa

    return v1

    .line 691
    .end local v0    # "curr":C
    :pswitch_2
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v3

    .line 692
    .restart local v0    # "curr":C
    if-eq v0, v7, :cond_4

    if-ne v0, v13, :cond_1f

    .line 693
    :cond_4
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v4

    move v0, v3

    .line 694
    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 696
    :cond_5
    const/16 v1, 0x59

    if-eq v0, v1, :cond_6

    const/16 v1, 0x79

    if-ne v0, v1, :cond_1f

    .line 697
    :cond_6
    const/4 v1, 0x4

    return v1

    .line 695
    :cond_7
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 720
    .end local v0    # "curr":C
    :cond_8
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 721
    .restart local v0    # "curr":C
    if-eq v0, v12, :cond_9

    if-ne v0, v11, :cond_1f

    .line 722
    :cond_9
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 723
    if-eq v0, v6, :cond_a

    if-ne v0, v3, :cond_1f

    .line 724
    :cond_a
    const/16 v1, 0x8

    return v1

    .line 657
    .end local v0    # "curr":C
    :cond_b
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x4e

    if-eq v0, v7, :cond_11

    if-eq v0, v5, :cond_d

    if-eq v0, v13, :cond_11

    if-ne v0, v4, :cond_c

    goto :goto_1

    .line 676
    :cond_c
    goto/16 :goto_4

    .line 668
    :cond_d
    :goto_1
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v3

    .line 669
    .restart local v0    # "curr":C
    if-eq v0, v2, :cond_10

    if-ne v0, v1, :cond_e

    goto :goto_2

    .line 671
    :cond_e
    const/16 v1, 0x4c

    if-eq v0, v1, :cond_f

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_1f

    .line 672
    :cond_f
    const/4 v1, 0x6

    return v1

    .line 670
    :cond_10
    :goto_2
    const/4 v1, 0x5

    return v1

    .line 660
    .end local v0    # "curr":C
    :cond_11
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v3

    .line 661
    .restart local v0    # "curr":C
    if-eq v0, v2, :cond_12

    if-ne v0, v1, :cond_1f

    .line 662
    :cond_12
    const/4 v1, 0x0

    return v1

    .line 680
    .end local v0    # "curr":C
    :cond_13
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 681
    .restart local v0    # "curr":C
    if-eq v0, v12, :cond_14

    if-ne v0, v11, :cond_1f

    .line 682
    :cond_14
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 683
    const/16 v1, 0x42

    if-eq v0, v1, :cond_15

    const/16 v1, 0x62

    if-ne v0, v1, :cond_1f

    .line 684
    :cond_15
    const/4 v1, 0x1

    return v1

    .line 753
    .end local v0    # "curr":C
    :cond_16
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 754
    .restart local v0    # "curr":C
    if-eq v0, v12, :cond_17

    if-ne v0, v11, :cond_1f

    .line 755
    :cond_17
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 756
    if-eq v0, v10, :cond_18

    if-ne v0, v9, :cond_1f

    .line 757
    :cond_18
    const/16 v1, 0xb

    return v1

    .line 704
    .end local v0    # "curr":C
    :cond_19
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v7

    .line 705
    .restart local v0    # "curr":C
    if-eq v0, v6, :cond_1d

    if-ne v0, v3, :cond_1a

    goto :goto_3

    .line 710
    :cond_1a
    if-eq v0, v5, :cond_1b

    if-ne v0, v4, :cond_1f

    .line 711
    :cond_1b
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 712
    const/16 v1, 0x47

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1f

    .line 713
    :cond_1c
    const/4 v1, 0x7

    return v1

    .line 706
    :cond_1d
    :goto_3
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 707
    if-eq v0, v2, :cond_1e

    if-ne v0, v1, :cond_1f

    .line 708
    :cond_1e
    const/4 v1, 0x3

    return v1

    .line 762
    .end local v0    # "curr":C
    :catch_0
    move-exception v0

    .line 765
    :cond_1f
    :goto_4
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "Bad Month"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseNumber()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    .line 570
    .local v0, "length":I
    const/4 v1, 0x0

    .line 571
    .local v1, "gotNum":Z
    const/4 v2, 0x0

    .line 573
    .local v2, "result":I
    nop

    :goto_0
    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v4, "No Number found"

    if-lt v3, v0, :cond_1

    .line 636
    if-eqz v1, :cond_0

    .line 637
    return v2

    .line 640
    :cond_0
    new-instance v3, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 574
    :cond_1
    iget-object v5, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    aget-char v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 626
    if-eqz v1, :cond_2

    .line 627
    return v2

    .line 621
    :pswitch_0
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x9

    .line 622
    .end local v2    # "result":I
    .local v3, "result":I
    const/4 v1, 0x1

    .line 623
    move v2, v3

    goto :goto_1

    .line 616
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_1
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x8

    .line 617
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 618
    move v2, v3

    goto :goto_1

    .line 611
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_2
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x7

    .line 612
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 613
    move v2, v3

    goto :goto_1

    .line 606
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_3
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x6

    .line 607
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 608
    move v2, v3

    goto :goto_1

    .line 601
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_4
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x5

    .line 602
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 603
    move v2, v3

    goto :goto_1

    .line 596
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_5
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x4

    .line 597
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 598
    move v2, v3

    goto :goto_1

    .line 591
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_6
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x3

    .line 592
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 593
    move v2, v3

    goto :goto_1

    .line 586
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_7
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x2

    .line 587
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 588
    move v2, v3

    goto :goto_1

    .line 581
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_8
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x1

    .line 582
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 583
    move v2, v3

    goto :goto_1

    .line 576
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_9
    mul-int/lit8 v2, v2, 0xa

    .line 577
    const/4 v1, 0x1

    .line 578
    nop

    .line 632
    :goto_1
    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_0

    .line 629
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x30
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

.method public parseNumericTimeZone()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 797
    const/4 v0, 0x0

    .line 798
    .local v0, "switchSign":Z
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    .line 799
    .local v1, "first":C
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 800
    const/4 v0, 0x1

    goto :goto_0

    .line 801
    :cond_0
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    .line 805
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v2

    .line 806
    .local v2, "tz":I
    div-int/lit8 v3, v2, 0x64

    mul-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v4, v2, 0x64

    add-int/2addr v3, v4

    .line 807
    .local v3, "offset":I
    if-eqz v0, :cond_1

    .line 808
    neg-int v4, v3

    return v4

    .line 810
    :cond_1
    return v3

    .line 802
    .end local v2    # "tz":I
    .end local v3    # "offset":I
    :cond_2
    new-instance v2, Ljava/text/ParseException;

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v4, "Bad Numeric TimeZone"

    invoke-direct {v2, v4, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public parseTimeZone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 774
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 777
    aget-char v0, v1, v0

    .line 778
    .local v0, "test":C
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseAlphaTimeZone()I

    move-result v1

    return v1

    .line 779
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumericTimeZone()I

    move-result v1

    return v1

    .line 775
    .end local v0    # "test":C
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "No more characters"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public peekChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 523
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 524
    aget-char v0, v1, v0

    return v0

    .line 526
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "No more characters"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipChar(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 534
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 535
    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 536
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 543
    return-void

    .line 538
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "Wrong char"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 541
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "No more characters"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipIfChar(C)Z
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 550
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 551
    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 552
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 553
    return v1

    .line 555
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 558
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "No more characters"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipUntilNumber()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 474
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 488
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_1

    .line 485
    :pswitch_0
    return-void

    .line 488
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/text/ParseException;

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v3, "No Number Found"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public skipWhiteSpace()V
    .locals 3

    .line 501
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    .line 502
    .local v0, "len":I
    nop

    :goto_0
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v1, v0, :cond_0

    .line 515
    return-void

    .line 503
    :cond_0
    iget-object v2, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    .line 512
    return-void

    .line 508
    :cond_1
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 509
    goto :goto_0
.end method
