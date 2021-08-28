.class public Ljavax/mail/internet/MailDateFormat;
.super Ljava/text/SimpleDateFormat;
.source "MailDateFormat.java"


# static fields
.field private static cal:Ljava/util/Calendar; = null

.field static debug:Z = false

.field private static final serialVersionUID:J = -0x711451d5f59c82abL

.field private static tz:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/mail/internet/MailDateFormat;->debug:Z

    .line 342
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->tz:Ljava/util/TimeZone;

    .line 343
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljavax/mail/internet/MailDateFormat;->tz:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 141
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "EEE, d MMM yyyy HH:mm:ss \'XXXXX\' (z)"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 142
    return-void
.end method

.method private static declared-synchronized ourUTC(IIIIIIIZ)Ljava/util/Date;
    .locals 4
    .param p0, "year"    # I
    .param p1, "mon"    # I
    .param p2, "mday"    # I
    .param p3, "hour"    # I
    .param p4, "min"    # I
    .param p5, "sec"    # I
    .param p6, "tzoffset"    # I
    .param p7, "lenient"    # Z

    const-class v0, Ljavax/mail/internet/MailDateFormat;

    monitor-enter v0

    .line 348
    :try_start_0
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 349
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v1, p7}, Ljava/util/Calendar;->setLenient(Z)V

    .line 350
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 351
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 352
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 353
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 354
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 v2, 0xc

    add-int v3, p4, p6

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 355
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p5}, Ljava/util/Calendar;->set(II)V

    .line 357
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 347
    .end local p0    # "year":I
    .end local p1    # "mon":I
    .end local p2    # "mday":I
    .end local p3    # "hour":I
    .end local p4    # "min":I
    .end local p5    # "sec":I
    .end local p6    # "tzoffset":I
    .end local p7    # "lenient":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static parseDate([CLjava/text/ParsePosition;Z)Ljava/util/Date;
    .locals 19
    .param p0, "orig"    # [C
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .param p2, "lenient"    # Z

    .line 262
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "\'"

    const/4 v0, -0x1

    .line 263
    .local v0, "day":I
    const/4 v4, -0x1

    .line 264
    .local v4, "month":I
    const/4 v5, -0x1

    .line 265
    .local v5, "year":I
    const/4 v6, 0x0

    .line 266
    .local v6, "hours":I
    const/4 v7, 0x0

    .line 267
    .local v7, "minutes":I
    const/4 v8, 0x0

    .line 268
    .local v8, "seconds":I
    const/4 v9, 0x0

    .line 271
    .local v9, "offset":I
    :try_start_0
    new-instance v10, Ljavax/mail/internet/MailDateParser;

    invoke-direct {v10, v1}, Ljavax/mail/internet/MailDateParser;-><init>([C)V

    .line 274
    .local v10, "p":Ljavax/mail/internet/MailDateParser;
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipUntilNumber()V

    .line 275
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v13

    .line 277
    .end local v0    # "day":I
    .local v13, "day":I
    const/16 v0, 0x2d

    invoke-virtual {v10, v0}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v11

    if-nez v11, :cond_0

    .line 278
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 282
    :cond_0
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseMonth()I

    move-result v12

    .line 283
    .end local v4    # "month":I
    .local v12, "month":I
    invoke-virtual {v10, v0}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 288
    :cond_1
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v0

    .line 289
    .end local v5    # "year":I
    .local v0, "year":I
    const/16 v4, 0x32

    if-ge v0, v4, :cond_2

    .line 290
    add-int/lit16 v0, v0, 0x7d0

    move v4, v0

    goto :goto_0

    .line 291
    :cond_2
    const/16 v4, 0x64

    if-ge v0, v4, :cond_3

    .line 292
    add-int/lit16 v0, v0, 0x76c

    move v4, v0

    goto :goto_0

    .line 291
    :cond_3
    move v4, v0

    .line 298
    .end local v0    # "year":I
    .local v4, "year":I
    :goto_0
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 299
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v14

    .line 302
    .end local v6    # "hours":I
    .local v14, "hours":I
    const/16 v0, 0x3a

    invoke-virtual {v10, v0}, Ljavax/mail/internet/MailDateParser;->skipChar(C)V

    .line 303
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v15

    .line 306
    .end local v7    # "minutes":I
    .local v15, "minutes":I
    invoke-virtual {v10, v0}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v8, v0

    .line 313
    :cond_4
    :try_start_1
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 314
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseTimeZone()I

    move-result v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v0

    goto :goto_1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "pe":Ljava/text/ParseException;
    :try_start_2
    sget-boolean v5, Ljavax/mail/internet/MailDateFormat;->debug:Z

    if-eqz v5, :cond_5

    .line 317
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No timezone? : \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 317
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    .end local v0    # "pe":Ljava/text/ParseException;
    :cond_5
    :goto_1
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->getIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 323
    nop

    .line 324
    nop

    .line 323
    move v11, v4

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, p2

    invoke-static/range {v11 .. v18}, Ljavax/mail/internet/MailDateFormat;->ourUTC(IIIIIIIZ)Ljava/util/Date;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 325
    .local v0, "d":Ljava/util/Date;
    return-object v0

    .line 327
    .end local v0    # "d":Ljava/util/Date;
    .end local v4    # "year":I
    .end local v8    # "seconds":I
    .end local v9    # "offset":I
    .end local v10    # "p":Ljavax/mail/internet/MailDateParser;
    .end local v12    # "month":I
    .end local v13    # "day":I
    .end local v14    # "hours":I
    .end local v15    # "minutes":I
    :catch_1
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Ljavax/mail/internet/MailDateFormat;->debug:Z

    if-eqz v4, :cond_6

    .line 334
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad date: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    :cond_6
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 338
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 9
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "dateStrBuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 165
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 166
    .local v0, "start":I
    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 167
    const/4 v1, 0x0

    .line 170
    .local v1, "pos":I
    add-int/lit8 v1, v0, 0x19

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_1

    .line 174
    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 175
    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 176
    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 177
    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 176
    add-int/2addr v2, v3

    .line 179
    .local v2, "offset":I
    if-gez v2, :cond_0

    .line 180
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    const/16 v4, 0x2d

    invoke-virtual {p2, v1, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 181
    neg-int v2, v2

    goto :goto_1

    .line 183
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .restart local v3    # "pos":I
    const/16 v4, 0x2b

    invoke-virtual {p2, v1, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 185
    :goto_1
    div-int/lit8 v1, v2, 0x3c

    div-int/lit16 v1, v1, 0x3e8

    .line 186
    .local v1, "rawOffsetInMins":I
    div-int/lit8 v4, v1, 0x3c

    .line 187
    .local v4, "offsetInHrs":I
    rem-int/lit8 v5, v1, 0x3c

    .line 189
    .local v5, "offsetInMins":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos":I
    .local v6, "pos":I
    div-int/lit8 v7, v4, 0xa

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v3, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 190
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "pos":I
    .restart local v3    # "pos":I
    rem-int/lit8 v7, v4, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 191
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos":I
    .restart local v6    # "pos":I
    div-int/lit8 v7, v5, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v3, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 192
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "pos":I
    .restart local v3    # "pos":I
    rem-int/lit8 v7, v5, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 195
    return-object p2

    .line 170
    .end local v2    # "offset":I
    .end local v3    # "pos":I
    .end local v4    # "offsetInHrs":I
    .end local v5    # "offsetInMins":I
    .local v1, "pos":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat;->isLenient()Z

    move-result v1

    invoke-static {v0, p2, v1}, Ljavax/mail/internet/MailDateFormat;->parseDate([CLjava/text/ParsePosition;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "newCalendar"    # Ljava/util/Calendar;

    .line 365
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method setCalendar() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 2
    .param p1, "newNumberFormat"    # Ljava/text/NumberFormat;

    .line 370
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method setNumberFormat() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
